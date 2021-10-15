package com.equations.calculator;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;

public final class QuadraticActivity extends AppCompatActivity {

    private static EditText enter_a, enter_b, enter_c;
    private static EditText enter_biq_a, enter_biq_b, enter_biq_c;
    private static EditText answer_q, answer_biq;
    private static double a, b, c, D;

    private static final int SIZE = 10;

    private static double[] x = new double[SIZE];
    private static double[] t = new double[SIZE];
    private static String[] f = new String[SIZE];

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
                Intent back = new Intent(QuadraticActivity.this, MainActivity.class);
                back.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                this.finish();

                return true;
        }
        return super.onOptionsItemSelected(item);
    }

    public static String complex(double a, double b) {
        String value;

        if ((a > 0) && (b > 0) && (b != 1) && (b != -1)) {
            value = String.format("%.2f", a) + " + " + String.format("%.2f", b) + "i";
        } else if ((a > 0) && (b < 0) && (b != 1) && (b != -1)) {
            value = String.format("%.2f", a) + " - " + String.format("%.2f", -b) + "i";
        } else if ((a < 0) && (b > 0) && (b != 1) && (b != -1)) {
            value = String.format("%.2f", a) + " + " + String.format("%.2f", b) + "i";
        } else if ((a < 0) && (b < 0) && (b != 1) && (b != -1)) {
            value = String.format("%.2f", a) + " - " + String.format("%.2f", -b) + "i";
        } else if ((a != 0) && (b == 1)) {
            value = String.format("%.2f", a) + " + i";
        } else if ((a != 0) && (b == -1)) {
            value = String.format("%.2f", a) + " - i";
        } else if ((a == 0) && (b != 0)) {
            value = String.format("%.2f", b) + "i";
        } else if ((a != 0) && (b == 0)) {
            value = String.format("%.2f", a);
        } else {
            value = "0";
        }

        return value;
    }

    public static String[] complex_sqrt(double a, double b) {
        double[] x = new double[SIZE];
        String[] f = new String[SIZE];

        x[1] = Math.sqrt((Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2)) + a) / 2);
        x[2] = Math.sqrt((Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2)) - a) / 2);

        f[1] = complex(x[1], x[2]);
        f[2] = complex(x[1], -x[2]);
        f[3] = "-" + complex(x[1], x[2]);
        f[4] = "-" + complex(x[1], -x[2]);

        return f;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_quadratic);
    }

    public void onButton1Click(View view) {
        enter_a = (EditText) findViewById(R.id.enter_a);
        enter_b = (EditText) findViewById(R.id.enter_b);
        enter_c = (EditText) findViewById(R.id.enter_c);
        answer_q = (EditText) findViewById(R.id.answer_q);

        try {

            a = Double.parseDouble(enter_a.getText().toString());
            b = Double.parseDouble(enter_b.getText().toString());
            c = Double.parseDouble(enter_c.getText().toString());

            D = Math.pow(b, 2) - 4 * a * c;

            if (a > 0) {
                if (D > 0) {
                    x[1] = (-b + Math.sqrt(D)) / (2 * a);
                    x[2] = (-b - Math.sqrt(D)) / (2 * a);

                    for (int i = 1; i <= 2; ++i) {
                        f[i] = String.format("%.2f", x[i]);
                    }

                    answer_q.setText("x[1] = " + f[1] + "\n" + "x[2] = " + f[2]);
                } else if (D == 0) {
                    x[1] = -b / (2 * a);

                    f[1] = String.format("%.2f", x[1]);

                    answer_q.setText("x[1] = " + f[1]);
                } else {
                    x[1] = -b / (2 * a);
                    x[2] = Math.sqrt(-D) / (2 * a);

                    f[1] = complex(x[1], x[2]);
                    f[2] = complex(x[1], -x[2]);

                    answer_q.setText("x[1] = " + f[1] + "\n" + "x[2] = " + f[2]);
                }
            } else {
                answer_q.setText("Error:\nDivision by zero");
            }

        } catch (Exception e) {
            answer_q.setText("Error:\nSomething went wrong");
        }
    }

    public void onButton2Click(View view) {
        enter_biq_a = (EditText) findViewById(R.id.enter_biq_a);
        enter_biq_b = (EditText) findViewById(R.id.enter_biq_b);
        enter_biq_c = (EditText) findViewById(R.id.enter_biq_c);
        answer_biq = (EditText) findViewById(R.id.answer_biq);

        try {

            a = Double.parseDouble(enter_biq_a.getText().toString());
            b = Double.parseDouble(enter_biq_b.getText().toString());
            c = Double.parseDouble(enter_biq_c.getText().toString());

            D = Math.pow(b, 2) - 4 * a * c;

            if (a > 0) {
                if (D > 0) {
                    t[1] = (-b + Math.sqrt(D)) / (2 * a);
                    t[2] = (-b - Math.sqrt(D)) / (2 * a);
                    if ((t[1] >= 0) && (t[2] >= 0)) {
                        x[1] = Math.sqrt(t[1]);
                        x[2] = -Math.sqrt(t[1]);
                        x[3] = Math.sqrt(t[2]);
                        x[4] = -Math.sqrt(t[2]);

                        for (int i = 1; i <= 4; ++i) {
                            f[i] = String.format("%.2f", x[i]);
                        }

                        answer_biq.setText("x[1] = " + f[1] + "\n" + "x[2] = " + f[2] + "\n" + "x[3] = " + f[3] + "\n" + "x[4] = " + f[4]);
                    } else if ((t[1] >= 0) && (t[2] < 0)) {
                        x[1] = Math.sqrt(t[1]);
                        x[2] = -Math.sqrt(t[1]);
                        x[3] = Math.sqrt(-t[2]);
                        x[4] = -Math.sqrt(-t[2]);

                        f[1] = String.format("%.2f", x[1]);
                        f[2] = String.format("%.2f", x[2]);
                        f[3] = complex(0, x[3]);
                        f[4] = complex(0, x[4]);

                        answer_biq.setText("x[1] = " + f[1] + "\n" + "x[2] = " + f[2] + "\n" + "x[3] = " + f[3] + "\n" + "x[4] = " + f[4]);
                    } else if ((t[1] < 0) && (t[2] >= 0)) {
                        x[1] = Math.sqrt(-t[1]);
                        x[2] = -Math.sqrt(-t[1]);
                        x[3] = Math.sqrt(t[2]);
                        x[4] = -Math.sqrt(t[2]);

                        f[1] = complex(0, x[1]);
                        f[2] = complex(0, x[2]);
                        f[3] = String.format("%.2f", x[3]);
                        f[4] = String.format("%.2f", x[4]);

                        answer_biq.setText("x[1] = " + f[1] + "\n" + "x[2] = " + f[2] + "\n" + "x[3] = " + f[3] + "\n" + "x[4] = " + f[4]);
                    } else {
                        x[1] = Math.sqrt(-t[1]);
                        x[2] = -Math.sqrt(-t[1]);
                        x[3] = Math.sqrt(-t[2]);
                        x[4] = -Math.sqrt(-t[2]);

                        for (int i = 1; i <= 4; ++i) {
                            f[i] = complex(0, x[i]);
                        }

                        answer_biq.setText("x[1] = " + f[1] + "\n" + "x[2] = " + f[2] + "\n" + "x[3] = " + f[3] + "\n" + "x[4] = " + f[4]);
                    }
                } else if (D == 0) {
                    t[1] = -b / (2 * a);
                    if (t[1] >= 0) {
                        x[1] = Math.sqrt(t[1]);
                        x[2] = -Math.sqrt(t[1]);

                        for (int i = 1; i <= 2; ++i) {
                            f[i] = String.format("%.2f", x[i]);
                        }

                        answer_biq.setText("x[1] = " + f[1] + "\n" + "x[2] = " + f[2]);
                    } else {
                        x[1] = Math.sqrt(-t[1]);
                        x[2] = -Math.sqrt(-t[1]);

                        for (int i = 1; i <= 2; ++i) {
                            f[i] = complex(0, x[i]);
                        }

                        answer_biq.setText("x[1] = " + f[1] + "\n" + "x[2] = " + f[2]);
                    }
                } else {
                    t[1] = -b / (2 * a);
                    t[2] = Math.sqrt(-D) / (2 * a);

                    f = QuadraticActivity.complex_sqrt(t[1], t[2]);
                    answer_biq.setText("x[1] = " + f[1] + "\n" + "x[2] = " + f[2] + "\n" + "x[3] = " + f[3] + "\n" + "x[4] = " + f[4]);
                }
            } else {
                answer_biq.setText("Eror:\nDivision by zero");
            }

        } catch (Exception e) {
            answer_biq.setText("Error:\nSomething went wrong");
        }
    }
}