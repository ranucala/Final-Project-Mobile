package com.example.mir;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;

import com.example.mir.inkom.R;
import com.squareup.picasso.Picasso;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;
public class DetailBerita  extends AppCompatActivity implements AdapterView.OnItemClickListener {
    public ImageLoader imageLoader;
    {
        imageLoader = new ImageLoader(null);
    }

    JSONArray string_json = null;
    String idberita;
    private ProgressDialog pDialog;
    JSONParser jsonParser = new JSONParser();
    public static final String TAG_ID = "id";
    public static final String TAG_JUDUL = "judul";
    public static final String TAG_ISI = "isi";
    public static final String TAG_GAMBAR = "gambar";
    private static final String url_detail_berita =
            "http://primacomsampit.com/android/detailberita.php";
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.single_list_item);

        Intent i = getIntent();
        idberita = i.getStringExtra(TAG_ID);
       
        new AmbilDetailBerita().execute();

    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {

    }

    class AmbilDetailBerita extends AsyncTask<String, String,
            String> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            pDialog = new ProgressDialog(DetailBerita.this);
            pDialog.setMessage("Mohon Tunggu ... !");
            pDialog.setIndeterminate(false);
            pDialog.setCancelable(true);
            pDialog.show();
        }
        protected String doInBackground(String... params) {
            try {
                List<NameValuePair> params1 = new
                        ArrayList<NameValuePair>();
                params1.add(new
                        BasicNameValuePair("id_berita",idberita));
                JSONObject json = jsonParser.makeHttpRequest(
                        url_detail_berita, "GET", params1);
                string_json = json.getJSONArray("berita");
                runOnUiThread(new Runnable() {
                    public void run() {
                        ImageView thumb_image = (ImageView)
                                findViewById(R.id.imageView1);
                        TextView judul = (TextView)
                                findViewById(R.id.judul);
                        //TextView detail = (TextView)
                        findViewById(R.id.detail);
                        TextView isi = (TextView)
                                findViewById(R.id.content);
                        try {
                            // ambil objek member pertama dari JSON Array
                            JSONObject ar =
                                    string_json.getJSONObject(0);
                            String judul_d = ar.getString(TAG_JUDUL);
                            String isi_d = ar.getString(TAG_ISI);
                            String url_detail_image = ar.getString(TAG_GAMBAR);
                            judul.setText(judul_d);
                            isi.setText(isi_d);


//                            imageLoader.DisplayImage(ar.getString(TAG_GAMBAR),thumb_image);
                            Picasso.with(getApplicationContext())
                                    .load(url_detail_image)
                                    .error(R.mipmap.ic_launcher)
                                    .into(thumb_image);
                        } catch (JSONException e) {
                            // TODO Auto-generated catch block
                            e.printStackTrace();
                        } catch (Exception e){
                            e.printStackTrace();
                        }
                    }
                });

            } catch (JSONException e) {
                e.printStackTrace();
            }
            return null;
        }
        protected void onPostExecute(String file_url) {
            pDialog.dismiss();
        }
    }
}