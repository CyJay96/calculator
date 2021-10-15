package com.equations.calculator;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;

public final class EquationActivity extends AppCompatActivity {

    private static EditText enter_n;
    private static int n;

    private static final int SIZE = 10;

    private static EditText[][] at = new EditText[SIZE][SIZE];
    private static double[][] a = new double[SIZE][SIZE];
    private static double[] b = new double[SIZE];
    private static double[] x = new double[SIZE];
    private static String[] f = new String[SIZE];
    private static String s;

    private static EditText answer;

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
                Intent back = new Intent(EquationActivity.this, MainActivity.class);
                back.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                this.finish();

                return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private static String[] Gauss(double[][] a, int n) {
        int k;
        double r, g;

        for (int i = 1; i < n + 1; ++i) {
            b[i] = a[i][n + 1];
        }

        for (k = 1; k < n + 1; ++k) {
            for (int j = k + 1; j < n + 1; ++j) {
                r = a[j][k] / a[k][k];
                for (int i = k; i < n + 1; ++i) {
                    a[j][i] -= r * a[k][i];
                }
                b[j] -= r * b[k];
            }
        }

        for (k = n; k > 0; --k) {
            r = 0;
            for (int j = k + 1; j < n + 1; ++j) {
                g = a[k][j] * x[j];
                r += g;
            }
            x[k] = (b[k] - r) / a[k][k];
        }

        for (int i = 1; i < n + 1; ++i) {
            f[i] = String.format("%.2f", x[i]);
        }

        return f;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_equation);
    }

    public void onButtonClick(View view) {
        enter_n = (EditText) findViewById(R.id.enter_n);
        answer = (EditText) findViewById(R.id.answer);

        try {

            n = Integer.parseInt(enter_n.getText().toString());

            at[1][1] = (EditText) findViewById(R.id.a11);
            at[1][2] = (EditText) findViewById(R.id.a12);
            at[1][3] = (EditText) findViewById(R.id.a13);
            at[1][4] = (EditText) findViewById(R.id.a14);
            at[1][5] = (EditText) findViewById(R.id.a15);
            at[1][6] = (EditText) findViewById(R.id.a16);
            at[1][7] = (EditText) findViewById(R.id.a17);

            at[2][1] = (EditText) findViewById(R.id.a21);
            at[2][2] = (EditText) findViewById(R.id.a22);
            at[2][3] = (EditText) findViewById(R.id.a23);
            at[2][4] = (EditText) findViewById(R.id.a24);
            at[2][5] = (EditText) findViewById(R.id.a25);
            at[2][6] = (EditText) findViewById(R.id.a26);
            at[2][7] = (EditText) findViewById(R.id.a27);

            at[3][1] = (EditText) findViewById(R.id.a31);
            at[3][2] = (EditText) findViewById(R.id.a32);
            at[3][3] = (EditText) findViewById(R.id.a33);
            at[3][4] = (EditText) findViewById(R.id.a34);
            at[3][5] = (EditText) findViewById(R.id.a35);
            at[3][6] = (EditText) findViewById(R.id.a36);
            at[3][7] = (EditText) findViewById(R.id.a37);

            at[4][1] = (EditText) findViewById(R.id.a41);
            at[4][2] = (EditText) findViewById(R.id.a42);
            at[4][3] = (EditText) findViewById(R.id.a43);
            at[4][4] = (EditText) findViewById(R.id.a44);
            at[4][5] = (EditText) findViewById(R.id.a45);
            at[4][6] = (EditText) findViewById(R.id.a46);
            at[4][7] = (EditText) findViewById(R.id.a47);

            at[5][1] = (EditText) findViewById(R.id.a51);
            at[5][2] = (EditText) findViewById(R.id.a52);
            at[5][3] = (EditText) findViewById(R.id.a53);
            at[5][4] = (EditText) findViewById(R.id.a54);
            at[5][5] = (EditText) findViewById(R.id.a55);
            at[5][6] = (EditText) findViewById(R.id.a56);
            at[5][7] = (EditText) findViewById(R.id.a57);

            at[6][1] = (EditText) findViewById(R.id.a61);
            at[6][2] = (EditText) findViewById(R.id.a62);
            at[6][3] = (EditText) findViewById(R.id.a63);
            at[6][4] = (EditText) findViewById(R.id.a64);
            at[6][5] = (EditText) findViewById(R.id.a65);
            at[6][6] = (EditText) findViewById(R.id.a66);
            at[6][7] = (EditText) findViewById(R.id.a67);

            for (int i = 1; i < n + 1; ++i) {
                for (int j = 1; j <= n + 1; ++j) {
                    a[i][j] = Double.parseDouble(at[i][j].getText().toString());
                }
            }

            f = EquationActivity.Gauss(a, n);

            s = "";
            for (int i = 1; i < n; ++i) {
                s += "x[" + i + "] = " + f[i] + "\n";
            }
            s += "x[" + n + "] = " + f[n];
            answer.setText(s);

        } catch (Exception e) {
            answer.setText("Error:\nSomething went wrong");
        }
    }
}