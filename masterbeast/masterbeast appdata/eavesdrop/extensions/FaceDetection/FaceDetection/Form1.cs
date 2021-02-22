using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Emgu.CV;
using Emgu.CV.Structure;
using Emgu.Util;
using Emgu.CV.CvEnum;
using System.IO;
using DirectShowLib;

namespace FaceDetection
{
    public partial class Form1 : Form
    {

        public Capture FaceCapture;
        public CascadeClassifier Haar;
        public int NumberOfFaces;
        public Rectangle[] Faces;
        public int PrevNumberOfFaces;
        public string FaceDetectFileLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\facedetect.txt";
        public string SentResult = "0";
        public Image<Bgr, byte> nextFrame;
        public Image<Gray, byte> grayframe;
      
         
        public Form1()
        {
            InitializeComponent();
            FaceCapture = new Capture(0);
          
            Haar = new CascadeClassifier(@"C:\Users\Rob\AppData\Roaming\masterbeast\haarcascade_frontalface_alt.xml");
            NumberOfFaces = 0;
            PrevNumberOfFaces = 0;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            try
            {
                textBox1.Text = Environment.NewLine + "  " + "> " + NumberOfFaces.ToString() + " faces detected.";
                Application.ApplicationExit += Application_ApplicationExit;
            } catch {
                FaceTimer.Enabled = false;
            }  
        }

       
        private void FaceTimer_Tick(object sender, EventArgs e)
        {
            
            using (nextFrame = FaceCapture.QueryFrame().ToImage<Bgr, Byte>())
            {
              

                grayframe = nextFrame.Convert<Gray, byte>();
                Faces = Haar.DetectMultiScale(grayframe, 1.1, 5);
               
                NumberOfFaces = Faces.Length;

                foreach (var Face in Faces)
                {
                    nextFrame.Draw(Face, new Bgr(Color.Green), 3);
                }



                if (NumberOfFaces == 1)
                {
                    textBox1.Text = Environment.NewLine + "  " + "> " + NumberOfFaces.ToString() + " face detected.";
                } else
                {
                    textBox1.Text = Environment.NewLine + "  " + "> " + NumberOfFaces.ToString() + " faces detected.";
                }

               
                if (NumberOfFaces != PrevNumberOfFaces)
                {
                    switch (NumberOfFaces)
                    {
                        case 0:
                            SentResult = "0";
                            break;
                        case 1:
                            SentResult = "1";
                            break;
                        default:
                            SentResult = "!";
                            break; 
                    }

                    File.WriteAllText(FaceDetectFileLocation, String.Empty);

                    using (System.IO.StreamWriter notification = new System.IO.StreamWriter(FaceDetectFileLocation, true))
                    {
                        
                        notification.WriteLine(SentResult);
                    }
                }
             

            pictureBox1.Image = nextFrame.ToBitmap();
                PrevNumberOfFaces = NumberOfFaces;
                }
       

        }


        private void button1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void Application_ApplicationExit(object sender, EventArgs e)
        {
            File.WriteAllText(FaceDetectFileLocation, String.Empty);
        }

        
    }


}
