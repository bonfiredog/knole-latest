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

namespace FaceDetectTest
{
    public partial class Form1 : Form
    {
        public Capture cap;
        public CascadeClassifier haar;
        public int NumberOfFaces;
        public Rectangle[] Faces;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            cap = new Emgu.CV.Capture(0);
            haar = new CascadeClassifier(@"C:\Users\Rob\AppData\Roaming\masterbeast\haarcascade_frontalface_alt_tree.xml");
            NumberOfFaces = 0;
        }

        private void timer1_Tick_1(object sender, EventArgs e)
        {
           using (Image<Bgr, byte> nextFrame = cap.QueryFrame().ToImage<Bgr, Byte>())
            {
                Image<Gray, byte> grayframe = nextFrame.Convert<Gray, byte>();
                Faces = haar.DetectMultiScale(grayframe, 1.1, 2, new Size(50, 50), new Size (1000,1000));
                NumberOfFaces = Faces.Length;
                textBox2.Text = NumberOfFaces.ToString();

                foreach (var Face in Faces)
                {
                    nextFrame.Draw(Face, new Bgr(Color.Green), 3);
                }

                pictureBox1.Image = nextFrame.ToBitmap();
           
            }
        }
    }
}

