import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Column
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.sp

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            ComposeTutorialApp()
        }
    }
}

@Composable
fun ComposeTutorialApp() {
    Column {
        Greeting(name = "World")
        PreviewMessageCard()
    }
}

@Composable
fun Greeting(name: String) {
    Text(text = "Hello, $name!", fontSize = 30.sp)
}

@Composable
fun MessageCard(name: String) {
    Text(text = "Hello, $name!", fontSize = 20.sp)
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    ComposeTutorialApp()
}

@Preview(showBackground = true)
@Composable
fun PreviewMessageCard() {
    MessageCard(name = "Android")
}
