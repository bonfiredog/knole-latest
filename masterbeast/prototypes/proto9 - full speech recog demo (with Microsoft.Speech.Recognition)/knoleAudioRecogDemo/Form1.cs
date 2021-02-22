using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Speech.Recognition;

namespace knoleAudioRecogDemo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        public void Form1_Load(object sender, EventArgs e)
        {
            label1.Text = "You can ask me to make toast," + Environment.NewLine + Environment.NewLine + "make you immortal," + Environment.NewLine + Environment.NewLine + "make it rain," + Environment.NewLine + Environment.NewLine + "or wink myself out of existence.";
            
        }

        public void button1_Click(object sender, EventArgs e)
        {
            button1.Enabled = false;
            button1.Text = "God Called";
            label2.Text = "The god is listening...";
            label2.ForeColor = Color.Red;


            SpeechRecognitionEngine GodListener = new SpeechRecognitionEngine();

            Choices GodList = new Choices();
            GodList.Add(new string[] { "Make toast", "Make me toast", "Make me some toast", "Make me immortal", "Make rain", "call rain", "call the rain", "make it rain", "wink out of existence", "begone", "go now", "wink yourself out of existence" });

            GrammarBuilder gb = new GrammarBuilder();
            gb.Append(GodList);

            Grammar GodGrammar = new Grammar(gb);

            GodListener.MaxAlternates = 2;

            try
            {
                GodListener.RequestRecognizerUpdate();
                GodListener.LoadGrammar(GodGrammar);
                GodListener.SetInputToDefaultAudioDevice();
                GodListener.SpeechRecognized += GodListener_SpeechRecognized;
                GodListener.AudioStateChanged += GodListener_AudioStateChanged;
                GodListener.AudioLevelUpdated += GodListener_AudioLevelUpdated;
                GodListener.RecognizeAsync(RecognizeMode.Multiple);
            }
            catch
            {
                return;
            }

        }

        private void GodListener_AudioLevelUpdated(object sender, AudioLevelUpdatedEventArgs e)
        {
            textBox3.Text = "Audio Level: " + e.AudioLevel;
        }

        private void GodListener_AudioStateChanged(object sender, AudioStateChangedEventArgs e)
        {
            var GodListener = sender as SpeechRecognitionEngine;




            if (e.AudioState == AudioState.Speech)
            {
                textBox2.Text =   "I can tell that you are speaking to me.";
            }

            if (e.AudioState == AudioState.Silence)
            {
                textBox2.Text = "I can hear only background noise.";
            }

            if (e.AudioState == AudioState.Stopped)
            {
               label2.Text = "The god is no longer listening.";
               label2.ForeColor = Color.Black;
               button1.Enabled = true;
               GodListener.RecognizeAsyncStop();
               GodListener.UnloadAllGrammars();
            }
        }


        private void GodListener_SpeechRecognized(object sender, SpeechRecognizedEventArgs e)
        {


            textBox1.Text = textBox1.Text + Environment.NewLine + "You said: " + e.Result.Text;

           if (e.Result.Text == "Make me toast" || e.Result.Text == "Make toast" )
            {
                textBox1.Text = textBox1.Text + Environment.NewLine + "It is sitting crisp on the plate, master.";
            }
           else if (e.Result.Text == "Call the rain" || e.Result.Text == "Call rain" || e.Result.Text == "Make rain" || e.Result.Text == "Make it rain")
            {
                textBox1.Text = textBox1.Text + Environment.NewLine + "Look outside. It is done.";
            }
           else if (e.Result.Text == "Wink out of existence" || e.Result.Text == "Wink yourself out of existence" || e.Result.Text == "begone" || e.Result.Text == "go now")
            {
                textBox1.Text = textBox1.Text + Environment.NewLine + "Farewell, master.";
                Application.Exit();
            }
           else if (e.Result.Text == "Make me immortal")
            {
                textBox1.Text = textBox1.Text + Environment.NewLine + "You will now live forever, master.";
            }
        
        }

    }
}
