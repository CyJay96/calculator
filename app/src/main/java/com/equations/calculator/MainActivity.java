package com.equations.calculator;

import android.content.DialogInterface;
import android.content.Intent;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;

public final class MainActivity extends AppCompatActivity {

    private static Button second_page, third_page;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        addListenerOnButton();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main_menu, menu);

        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.item_info:
                Intent inf = new Intent("com.equations.calculator.InfoActivity");
                startActivity(inf);

                return true;
            case R.id.item_exit:
                AlertDialog.Builder exit = new AlertDialog.Builder(MainActivity.this);
                exit.setMessage("Вы хотите закрыть приложение?")
                        .setCancelable(false)
                        .setPositiveButton("Да", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialogInterface, int i) {
                                finish();
                            }
                        })
                        .setNegativeButton("Нет", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialogInterface, int i) {
                                dialogInterface.cancel();
                            }
                        });
                AlertDialog alertDialog = exit.create();
                alertDialog.setTitle("Закрытие приложения");
                alertDialog.show();
        }
        return super.onOptionsItemSelected(item);
    }

    public void addListenerOnButton() {
        second_page = (Button) findViewById(R.id.second_page);
        third_page = (Button) findViewById(R.id.third_page);

        second_page.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        Intent eq = new Intent("com.equations.calculator.EquationActivity");
                        startActivity(eq);
                    }
                }
        );

        third_page.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        Intent q_biq = new Intent("com.equations.calculator.QuadraticActivity");
                        startActivity(q_biq);
                    }
                }
        );
    }
}