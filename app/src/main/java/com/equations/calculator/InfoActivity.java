package com.equations.calculator;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;

public final class InfoActivity extends AppCompatActivity {

    private static TextView link;
    private static TextView link_vk;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_info);

        link = (TextView) findViewById(R.id.link);
        if (link != null) {
            link.setMovementMethod(LinkMovementMethod.getInstance());
        }

        link_vk = (TextView) findViewById(R.id.link_vk);
        if (link_vk != null) {
            link_vk.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main_menu, menu);
        menu.getItem(1).setVisible(false);
        menu.getItem(0).setTitle("CANCEL");

        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.item_info:
                Intent back = new Intent(InfoActivity.this, MainActivity.class);
                back.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                this.finish();

                return true;
        }
        return super.onOptionsItemSelected(item);
    }
}