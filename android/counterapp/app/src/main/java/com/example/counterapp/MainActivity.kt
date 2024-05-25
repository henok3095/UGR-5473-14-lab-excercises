package com.example.counterapp

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import android.widget.Button
import android.widget.TextView

class MainActivity : AppCompatActivity() {

    private lateinit var tvCount: TextView
    private lateinit var btnIncrement: Button
    private lateinit var btnDecrement: Button
    private lateinit var btnReset: Button

    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Initialize views
        tvCount = findViewById(R.id.tvCount)
        btnIncrement = findViewById(R.id.btnIncrement)
        btnDecrement = findViewById(R.id.btnDecrement)
        btnReset = findViewById(R.id.btnReset)

        // Set initial count
        tvCount.text = count.toString()

        // Set up button click listeners
        btnIncrement.setOnClickListener {
            count++
            updateCount()
        }

        btnDecrement.setOnClickListener {
            count--
            updateCount()
        }

        btnReset.setOnClickListener {
            count = 0
            updateCount()
        }
    }

    private fun updateCount() {
        tvCount.text = count.toString()
    }
}

open class AppCompatActivity {

}
