using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Speech.Recognition;
using System.Speech.AudioFormat;
using System.Speech.Synthesis;
using System.Globalization;
using System.Diagnostics;
using System.IO;
using System.Windows;
using System.Net;
using Newtonsoft.Json;
using MoonPhaseCalc;
using AForge;
using AForge.Video;
using AForge.Video.DirectShow;
using AForge.Vision.Motion;
using Tesseract;
using System.Net.Http;
using System.Web;
using System.Net.Http.Headers;
using Microsoft.ProjectOxford;
using Microsoft.ProjectOxford.Emotion;
using Microsoft.ProjectOxford.Vision;
using Microsoft.ProjectOxford.Vision.Contract;
using System.Drawing.Imaging;
using System.Management;
using System.IO.Ports;
using Newtonsoft.Json.Linq;




namespace Knole_Eavesdrop
{

    public partial class Form1 : Form
    {
        //------------------------------------ SETUP

        //------------ Speech & Audio

        public SpeechRecognitionEngine GodListener;
        public int GodAudioLevel = 0;
        public string LogLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\saved speech logs.txt";
        public string TextResultSaveLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\latest speech results.txt";
        public string NewResultNotificationLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\new speech result.txt";
        public string SunMoonDataTextFileLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\latest sunmoon results.txt";
        public string SunMoonNewResultFileLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\new sunmoon result.txt";
        public string VolumeLocation = @"C:\users\Rob\AppData\Roaming\masterbeast\volume.txt";
        public string CurrentVolume;

        //Vocabularies
        public string[] DebugArray = { "Elohim El Adonnay Tetragrammaton", "Test One" };

        //---------- Vision

        //Screenshots
        public string BaseDirectory = @"C:\Users\Rob\AppData\Roaming\masterbeast\";
        public string CurrentScreenshotLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\currentscreenshot.png";
        public string CurrentScreenshotLocation2 = @"C:\Users\Rob\AppData\Roaming\masterbeast\currentscreenshot2.png";
        public string CurrentScreenshotLocation3 = @"C:\Users\Rob\AppData\Roaming\masterbeast\currentscreenshot2.png";

        public FileSystemWatcher SSWatcher = new FileSystemWatcher();
        public FileSystemWatcher SS2Watcher = new FileSystemWatcher();
        public FilterInfoCollection USBCams;
        public AForge.Video.DirectShow.VideoCaptureDevice Cam = null;
        public AForge.Video.DirectShow.VideoCaptureDevice Cam2 = null;
        public int LTCount = 0;

        //OCR
        public FileSystemWatcher OCRWatcher = new FileSystemWatcher();
        public string OCRRequestFilename = "new gm ocr request.txt";
        public string OCRRequestLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\new gm ocr request.txt";
        public string EavesdropOCRSubmittedLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\new ocr.txt";
        public string CurrentOCRShotLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\ocrimg.png";

        //Emotion
        public FileSystemWatcher EmotionWatcher = new FileSystemWatcher();
        public string EmotionRequestFilename = "new gm emotion request.txt";
        public string EmotionRequestLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\new gm emotion request.txt";
        public string EavesdropEmotionSubmittedLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\new emotion.txt";
        public string CurrentEmotionShotLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\emotionimage.png";
        public string FirstString = "null";
        public string SecondString = "null";
        public string FaceNumber = "No Faces";
        public string contentString;

        //Vision
        public FileSystemWatcher VisionWatcher = new FileSystemWatcher();
        public FileSystemWatcher VisionWatcher2 = new FileSystemWatcher();
        public string VisionRequestFilename = "new gm vision request.txt";
        public string VisionRequest2Filename = "new gm vision request2.txt";
        public string VisionRequestLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\new gm vision request.txt";
        public string VisionRequest2Location = @"C:\Users\Rob\AppData\Roaming\masterbeast\new gm vision request2.txt";
        public string EavesdropVisionSubmittedLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\new vision.txt";
        public string EavesdropVision2SubmittedLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\new vision2.txt";
        public string CurrentVisionShotLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\visionshot.png";
        public string CurrentVisionShot2Location = @"C:\Users\Rob\AppData\Roaming\masterbeast\visionshot2.png";

        //Colour
        public FileSystemWatcher ColourWatcher = new FileSystemWatcher();
        public FileSystemWatcher ColourWatcher2 = new FileSystemWatcher();
        public string ColourRequestFilename = "new gm colour request.txt";
        public string ColourRequestFilename2 = "new gm colour request2.txt";
        public string ColourRequestLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\new gm colour request.txt";
        public string ColourRequestLocation2 = @"C:\Users\Rob\AppData\Roaming\masterbeast\new gm colour request2.txt";
        public string EavesdropColourSubmittedLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\new colour.txt";
        public string EavesdropColourSubmittedLocation2 = @"C:\Users\Rob\AppData\Roaming\masterbeast\new colour2.txt";
        public string CurrentColourShotLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\colourshot.png";
        public string CurrentColourShotLocation2 = @"C:\Users\Rob\AppData\Roaming\masterbeast\colourshot2.png";

        //Motion
        AForge.Vision.Motion.MotionDetector Detector = new AForge.Vision.Motion.MotionDetector(new TwoFramesDifferenceDetector(), new BlobCountingObjectsProcessing());
        AForge.Vision.Motion.MotionDetector Detector2 = new AForge.Vision.Motion.MotionDetector(new TwoFramesDifferenceDetector(), new BlobCountingObjectsProcessing());
        public double MotionThreshold = 0.003;
        public string MotionDetectionSaveLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\new motion.txt";
        public string MotionDetectionSaveLocation2 = @"C:\Users\Rob\AppData\Roaming\masterbeast\new motion2.txt";
        public int FrameCount = 0;
        public int FrameCount2 = 0;
        public bool CurrentlyInMotion = false;
        public bool CurrentlyInMotion2 = false;
        public bool NewMotion = false;
        public bool NewMotion2 = false;

        // Sun & Moon
        public string TodaySunrise = "null";
        public string TodaySunset = "null";
        public string TodayDayLength = "null";
        public string TonightMoonPhase = "null";
        public dynamic TimeNow = DateTime.Now;

        //Light Level
        Bitmap ColourImage;
        public string LightLevelSaveLocation = @"C:\Users\Rob\AppData\Roaming\masterbeast\lightlevel.txt";

        //--------------------------------------------------------------------------------------------------------------------------


        //----------------------------- Create the form.
        public Form1()
        {
            InitializeComponent();
        }


        //---------------------------------------------------------------------------------------------------------------------------

        //----------------------------- Load form.
        private void Form1_Load(object sender, EventArgs e)
        {

            //----------------- Setting Default Form Components

            //Voice Recognition Setup
            WipeLatestResults();
            SetupAndStartVoiceEngine();

            //--------------------------------------------------------------------------------------------------------------------------
            //Vision Setup

            //Default for camera boxes.
            textBox25.Text = Environment.NewLine + Environment.NewLine + Environment.NewLine + Environment.NewLine + Environment.NewLine + Environment.NewLine + "Main Camera" + Environment.NewLine + "No Video Input.";
            textBox30.Text = Environment.NewLine + Environment.NewLine + Environment.NewLine + Environment.NewLine + Environment.NewLine + Environment.NewLine + "Second Camera" + Environment.NewLine + "No Video Input.";
            textBox30.Visible = true;
            textBox25.Visible = true;
            WebcamBox.Visible = false;
            WebcamBox2.Visible = false;

            //Light Detection
            textBox31.Text = "0%";

            //Get a list of all the USB cameras attached to the computer.
            USBCams = new FilterInfoCollection(FilterCategory.VideoInputDevice);

            //Default for Detection Boxes
            textBox23.Text = Environment.NewLine + "  " + "> No motion detected yet in #1...";
            textBox24.Text = Environment.NewLine + "  " + "> No motion detected yet in #2...";
            textBox19.Text = Environment.NewLine + "No emotions recognised yet.";
            textBox20.Text = Environment.NewLine + "No text recognised yet.";
            textBox21.Text = Environment.NewLine + "No image analysed yet.";
            textBox22.Text = Environment.NewLine + "No colour analysed yet.";

            //Setup the cameras with the correct camera (Lifecam).

            //Lifecam
           if (IsUSBDeviceConnected("075D", "045E")) {

                try
                {
                    var videoDevices = new FilterInfoCollection(FilterCategory.VideoInputDevice);

                    Cam = new AForge.Video.DirectShow.VideoCaptureDevice(videoDevices[2].MonikerString);
                   
                  

                    textBox18.Text = "Lifecam";
                    textBox23.Text = Environment.NewLine + "  " + "> No motion detected yet in #1...";
                    textBox24.Text = Environment.NewLine + "  " + "> No motion detected yet in #2...";
                    textBox19.Text = Environment.NewLine + "No emotions recognised yet.";
                    textBox20.Text = Environment.NewLine + "No text recognised yet.";
                    textBox21.Text = Environment.NewLine + "No image analysed yet.";
                    textBox22.Text = Environment.NewLine + "No colour analysed yet.";

                    Cam.NewFrame += Cam_NewFrame;

                    Cam.Start();

                    EmotionWatcher.Path = Path.GetDirectoryName(BaseDirectory);
                    EmotionWatcher.Filter = Path.GetFileName(EmotionRequestFilename);
                    EmotionWatcher.EnableRaisingEvents = true;
                    EmotionWatcher.Created += new FileSystemEventHandler(EmotionWatcher_Created);

                    VisionWatcher.Path = Path.GetDirectoryName(BaseDirectory);
                    VisionWatcher.Filter = Path.GetFileName(VisionRequestFilename);
                    VisionWatcher.EnableRaisingEvents = true;
                    VisionWatcher.Created += VisionWatcher_Created;

                    ColourWatcher.Path = Path.GetDirectoryName(BaseDirectory);
                    ColourWatcher.Filter = Path.GetFileName(ColourRequestFilename);
                    ColourWatcher.EnableRaisingEvents = true;
                    ColourWatcher.Created += new FileSystemEventHandler(ColourWatcher_Created);

                    AddToDebugLog("Main camera set up just fine with Lifecam.");

                    textBox25.Visible = false;
                    WebcamBox.Visible = true;

                    button7.Enabled = true;
                    button8.Enabled = false;
                    button10.Enabled = true;
                    button13.Enabled = true;

                }
                catch (Exception error)
                {
                    button13.Enabled = false;
                    button12.Enabled = false;
                    button14.Enabled = false;

                    AddToDebugLog("Error with main camera: " + error.ToString());

                    textBox25.Visible = true;
                    WebcamBox.Visible = false;

                    button7.Enabled = false;
                    button8.Enabled = false;
                    button10.Enabled = true;
                }



            }
            //No camera attached gives error message.
            else
            {

                button13.Enabled = false;
                button12.Enabled = false;
                button14.Enabled = false;

                AddToDebugLog("Unknown error with main camera.");

                textBox25.Visible = true;
                WebcamBox.Visible = false;

                button7.Enabled = false;
                button8.Enabled = false;
                button10.Enabled = true;

            }

            //If there is one of the Logitech cameras attached, set it up as Cam #2.
            

            if (IsUSBDeviceConnected("0825", "046D"))
            {
                try
                {
                    Cam2 = new AForge.Video.DirectShow.VideoCaptureDevice(
                        @"device:pnp:\\?\usb#vid_046d&pid_0825&mi_00#7&2c7e6b66&0&0000#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\{bbefb6c7-2fc4-4139-bb8b-a58bba724083}");
                        
                    textBox28.Text = "Logitech Camera";

                    textBox23.Text = Environment.NewLine + "  " + "> No motion detected yet in #1...";
                    textBox24.Text = Environment.NewLine + "  " + "> No motion detected yet in #2...";
                    textBox20.Text = Environment.NewLine + "No text recognised yet.";
                    textBox21.Text = Environment.NewLine + "No image analysed yet.";
                    textBox22.Text = Environment.NewLine + "No colour analysed yet.";

                    Cam2.NewFrame += Cam2_NewFrame2;
                    Cam2.Start();


                    OCRWatcher.Path = Path.GetDirectoryName(BaseDirectory);
                    OCRWatcher.Filter = Path.GetFileName(OCRRequestFilename);
                    OCRWatcher.EnableRaisingEvents = true;
                    OCRWatcher.Created += new FileSystemEventHandler(OCRWatcher_Created);

                    VisionWatcher2.Path = Path.GetDirectoryName(BaseDirectory);
                    VisionWatcher2.Filter = Path.GetFileName(VisionRequest2Filename);
                    VisionWatcher2.EnableRaisingEvents = true;
                    VisionWatcher2.Created += VisionWatcher2_Created;

                    ColourWatcher2.Path = Path.GetDirectoryName(BaseDirectory);
                    ColourWatcher2.Filter = Path.GetFileName(ColourRequestFilename2);
                    ColourWatcher2.EnableRaisingEvents = true;
                    ColourWatcher2.Created += ColourWatcher2_Created;


                    AddToDebugLog("Second camera set up just fine.");

                    textBox30.Visible = false;
                    WebcamBox2.Visible = true;

                    button4.Enabled = true;
                    button18.Enabled = true;
                    button17.Enabled = false;
                    button16.Enabled = true;

                }
                catch (Exception error)
                {
                    button4.Enabled = false;
                    button11.Enabled = false;
                    button5.Enabled = false;

                    AddToDebugLog("Error with second camera: " + error.ToString());

                    textBox30.Visible = true;
                    WebcamBox2.Visible = false;

                    button18.Enabled = false;
                    button16.Enabled = false;
                    button17.Enabled = true;
                }
            }
            else
            {
                button4.Enabled = false;
                button11.Enabled = false;
                button5.Enabled = false;

                AddToDebugLog("Error with second camera: Correct camera not detected.");

                textBox30.Visible = true;
                WebcamBox2.Visible = false;

                button18.Enabled = false;
                button16.Enabled = false;
                button17.Enabled = true;
            }
           
          
            //Load Face Detection
        if (IsUSBDeviceConnected("0825", "046D") && AreBothLogitechsConnected())
            {
                Process.Start(@"C:\Users\Rob\AppData\Roaming\masterbeast\eavesdrop\extensions\FaceDetection\FaceDetection\bin\Release\FaceDetection.exe");
                AddToDebugLog("Pareidolia started.");
                  } else
                  {
                      AddToDebugLog("Pareidolia not started, as correct camera not detected.");
            }
            

            //--------------------------------------------------------------------------------------------------------------------------
            //---------------- Sun & Moon Data Setup

            //Pull in data from website.

            try
            {
                WebClient wc = new WebClient();

                var json = wc.DownloadString("http://api.sunrise-sunset.org/json?lat=51.435084&lng=-2.182525&date=today&formatted=1");

                dynamic output = JsonConvert.DeserializeObject(json);

                TodaySunrise = output.results.sunrise;
                TodaySunset = output.results.sunset;
                TodayDayLength = output.results.day_length;

                int ThisYear = Convert.ToInt32(TimeNow.Year);
                int ThisMonth = Convert.ToInt32(TimeNow.Month);
                int ThisDay = Convert.ToInt32(TimeNow.Day);

                TonightMoonPhase = MoonCalcs.GetMoonPhase();

                SaveSunMoonResultToFile(TodaySunrise
                + Environment.NewLine
                + TodaySunset
                + Environment.NewLine
                + TodayDayLength
                + Environment.NewLine
                + TonightMoonPhase
                , SunMoonDataTextFileLocation
                );

                AddToDebugLog("Received SunMoon data.");
            }

            catch (Exception error)
            {
                AddToDebugLog("Error capturing SunMoon data: " + error);
            }

            //Set the textboxes to display the sunmoon data.
            textBox8.Text = TodaySunrise;
            textBox10.Text = TodaySunset;
            textBox12.Text = TodayDayLength;
            textBox14.Text = TonightMoonPhase;


            //Display current time in text box.
            string StatDay = TimeNow.Day.ToString();
            string StatMonth = TimeNow.Month.ToString();
            string StatYear = TimeNow.Year.ToString();
            string StatHour = TimeNow.Hour.ToString();
            string StatMinute = TimeNow.Minute.ToString();
            string StatSecond = TimeNow.Second.ToString();

            textBox15.Text = StatDay + "/" + StatMonth + "/" + StatYear + " " + StatHour + ":" + StatMinute + ":" + StatSecond;

            //Create a timer that triggers once per second.
            System.Windows.Forms.Timer SecondTick = new System.Windows.Forms.Timer();
            SecondTick.Interval = 1000;
            SecondTick.Tick += SecondTick_Tick;
            SecondTick.Start();

            LightTimer.Enabled = true;
            LightTimer.Start();
            LightTimer.Tick += LightTimer_Tick1;

            Application.ApplicationExit += Application_ApplicationExit;
           
        
        }



        //----------------------------------------------------------------------------------------------------------


        //--------------------------------------------- EVENTS

        //Counting Time

        private void SecondTick_Tick(object sender, EventArgs e)
        {
            TimeNow = DateTime.Now;

            

            string StatDay = TimeNow.Day.ToString();
            string StatMonth = TimeNow.Month.ToString();
            string StatYear = TimeNow.Year.ToString();
            string StatHour = TimeNow.Hour.ToString();
            string StatMinute = TimeNow.Minute.ToString();
            string StatSecond = TimeNow.Second.ToString();

            if (TimeNow.Day < 10)
            {
                StatDay = "0" + TimeNow.Day.ToString();
            }

            if (TimeNow.Month < 10)
            {
                StatMonth = "0" + TimeNow.Month.ToString();
            }

            if (TimeNow.Hour < 10)
            {
                StatHour = "0" + TimeNow.Hour.ToString();
            }

            if (TimeNow.Minute < 10)
            {
                StatMinute = "0" + TimeNow.Minute.ToString();
            }

            if (TimeNow.Second < 10)
            {
                StatSecond = "0" + TimeNow.Second.ToString();
            }

            textBox15.Text = StatDay + "/" + StatMonth + "/" + StatYear + " " + StatHour + ":" + StatMinute + ":" + StatSecond;

            //If this trigger triggers at midnight, get the sun and moon data.
            if
            (TimeNow.Hour == 0 && TimeNow.Minute == 0 &&
            (TimeNow.Second == 0 || TimeNow.Second == 1 || TimeNow.Second == 2 || TimeNow.Second == 3)
            )
            {
                File.WriteAllText(SunMoonDataTextFileLocation, String.Empty);

                if (File.Exists(SunMoonNewResultFileLocation))
                {
                    File.Delete(SunMoonNewResultFileLocation);
                }

                try
                {
                    WebClient wc = new WebClient();

                    var json = wc.DownloadString("http://api.sunrise-sunset.org/json?lat=51.435084&lng=-2.182525&date=today&formatted=1");

                    dynamic output = JsonConvert.DeserializeObject(json);

                    TodaySunrise = output.results.sunrise;
                    TodaySunset = output.results.sunset;
                    TodayDayLength = output.results.day_length;

                    int ThisYear = Convert.ToInt32(TimeNow.Year);
                    int ThisMonth = Convert.ToInt32(TimeNow.Month);
                    int ThisDay = Convert.ToInt32(TimeNow.Day);

                    TonightMoonPhase = MoonCalcs.GetMoonPhase();

                    SaveSunMoonResultToFile(TodaySunrise
                    + Environment.NewLine
                    + TodaySunset
                    + Environment.NewLine
                    + TodayDayLength
                    + Environment.NewLine
                    + TonightMoonPhase
                    , SunMoonDataTextFileLocation
                    );

                    AddToDebugLog("Received SunMoon data for the coming day and night, at the stroke of midnight.");
                }

                catch (Exception error)
                {
                    AddToDebugLog("Error capturing SunMoon data: " + error);
                    TodaySunrise = "7:02:29 AM";
                    TodaySunset = "5:41:07 PM";
                    TodayDayLength = "10:38:38";
                }


                textBox8.Text = TodaySunrise;
                textBox10.Text = TodaySunset;
                textBox12.Text = TodayDayLength;
                textBox14.Text = TonightMoonPhase;
            }

        }

        //----------------- Exiting Events

        //If the exit button is clicked, this saves the text log and wipes the latest results.
        //The Face Detection companion app is also closed, if it is open.
        //The latest screenshots and text files are preserved, and must be deleted manually.

        private void button3_Click(object sender, EventArgs e)
        {
            Process[] ProcessArray = Process.GetProcesses();
            foreach (Process ParaProcess in ProcessArray)
            {
                string ProcessName = ParaProcess.ProcessName;

                ProcessName = ProcessName.ToLower();
                if (ProcessName == "facedetection")
                {
                    ParaProcess.Kill();
                }
            }

            SaveLogToTextFile();
            WipeLatestResults();

            System.Environment.Exit(1);

        }


        private void Application_ApplicationExit(object sender, EventArgs e)
        {
            Process[] ProcessArray = Process.GetProcesses();
            foreach (Process ParaProcess in ProcessArray)
            {
                string ProcessName = ParaProcess.ProcessName;

                ProcessName = ProcessName.ToLower();
                if (ProcessName == "facedetection")
                {
                    ParaProcess.Kill();
                }
            }

            SaveLogToTextFile();
            WipeLatestResults();

        }




        //Open the Gamemaker application if clicked.

        private void button15_Click(object sender, EventArgs e)
        {
            Process.Start(@"E:\Git Projects\knole\masterbeast\outputted exes\masterbeast.exe");
        }


        //Each tick of the LightTimer, get an image from one of the forward-facing webcams and check its brightness, saving it to a text file.


        private void LightTimer_Tick1(object sender, EventArgs e)
        {

            if (WebcamBox2.Image != null) { 
          ColourImage = new Bitmap(WebcamBox2.Image);
            }

            if (ColourImage != null)
            {
                string LightLevel = BrightnessInRoom(ColourImage);
                textBox31.Text = LightLevel + "%";
                File.WriteAllText(LightLevelSaveLocation, LightLevel);
        
            }
        }






        //--------------------------------------------------------------------------------------------------------------------------
        //-------------- Speech Events

        private void button1_Click(object sender, EventArgs e)
        {
            Process.Start("C:/Windows/System32/mmsys.cpl");
        }

        private void GodListener_SpeechRecognitionRejected(object sender, SpeechRecognitionRejectedEventArgs e)
        {
            WriteNewLineToRecogLog("That speech was not recognised.");
        }


        private void GodListener_SpeechRecognized(object sender, SpeechRecognizedEventArgs e)
        {

            
                WriteNewLineToRecogLog("'" + e.Result.Text + "'" + " with confidence of: " + e.Result.Confidence.ToString());
                SaveResultToFile(e.Result.Text, TextResultSaveLocation);
        
        }

        private void GodListener_SpeechDetected(object sender, SpeechDetectedEventArgs e)
        {
            if (GodAudioLevel == 0)
            {
                textBox3.Text = "Silence";
            }
            else if (GodAudioLevel > 0 && GodAudioLevel < 20)
            {
                textBox3.Text = "Quiet Sound Or Speech";
            }
            else if (GodAudioLevel >= 20)
            {
                textBox3.Text = "Loud Sound Or Speech";
            }
        }

        private void GodListener_AudioLevelUpdated(object sender, AudioLevelUpdatedEventArgs e)
        {
            GodAudioLevel = e.AudioLevel;
            textBox5.Text = GodAudioLevel.ToString();
            if (GodAudioLevel == 0)
            {
                textBox3.Text = "Silence";
            }
            if (GodAudioLevel > 0 && GodAudioLevel < 20)
            {
                textBox3.Text = "Quiet Sound Or Speech";
            }
            else if (GodAudioLevel >= 20)
            {
                textBox3.Text = "Loud Sound Or Speech";
            }
        }

        private void GodListener_AudioStateChanged(object sender, AudioStateChangedEventArgs e)
        {
            var GodListener = sender as SpeechRecognitionEngine;

            if (e.AudioState == AudioState.Stopped)
            {
                radioButton1.Text = "Not Receiving Audio";
                radioButton1.Checked = false;
                radioButton1.ForeColor = System.Drawing.Color.Black;
                AddToDebugLog("Lost connection to microphone, or some error occurred.");
                textBox3.Text = "";
                textBox5.Text = "";
                textBox1.Text = "Please connect the correct microphone and restart to enable speech recognition.";
                GodListener.RecognizeAsyncStop();
            }
            else if (e.AudioState == AudioState.Silence)
            {

                if (GodAudioLevel == 0)
                {
                    radioButton1.Text = "Receiving Audio";
                    radioButton1.Checked = true;
                    radioButton1.ForeColor = System.Drawing.Color.Red;
                    textBox3.Text = "Silence";
                }
            }
        }



        //Wipe the text logs.
        private void button6_Click(object sender, EventArgs e)
        {
            File.WriteAllText(LogLocation, String.Empty);
            AddToDebugLog("Wiped logs.");
        }


        //Save the current contents of the RecogBox to a text file. 
        private void button2_Click(object sender, EventArgs e)
        {
            SaveLogToTextFile();
            AddToDebugLog("Current results added to log.");
        }



        //--------------------------------------------------------------------------------------------------------------------------
        //---------------- Vision Events



        //Cam #1

        //Update the webcam stream. (#1)

        private void Cam_NewFrame(object sender, NewFrameEventArgs eventArgs)
        {
            FrameCount += 1;
            WebcamBox.Image = (Bitmap)eventArgs.Frame.Clone();

            //If motion is not currently being detected, look for it.
            if (CurrentlyInMotion == false)
            {

                if (Detector.ProcessFrame(eventArgs.Frame) > MotionThreshold)
                {
                    textBox23.Text = Environment.NewLine + "  " + "> Motion detected!";
                    using (System.IO.StreamWriter notification = new System.IO.StreamWriter(MotionDetectionSaveLocation, true))
                    {
                        notification.WriteLine("New motion detected!");
                    }
                    CurrentlyInMotion = true;
                    FrameCount = 0;
                }
            }
            //If we are in the middle of having motion detected, keep it 'topped up'; after a certain amount of inactivity, reset.
            else if (CurrentlyInMotion == true)
            {
                FrameCount += 1;
                if (Detector.ProcessFrame(eventArgs.Frame) > MotionThreshold)
                {
                    textBox23.Text = Environment.NewLine + "  " + "> Motion detected in #1!";
                    FrameCount = 0;
                }

                if (FrameCount >= 60)
                {
                    textBox23.Text = Environment.NewLine + "  " + "> No motion detected in #1.";
                    FrameCount = 0;
                    CurrentlyInMotion = false;
                    if (File.Exists(MotionDetectionSaveLocation))
                    {
                        File.Delete(MotionDetectionSaveLocation);
                    }
                }
            }
        }


        //Find emotions in submitted screenshot image and return them, when button is clicked.
        private void button12_Click(object sender, EventArgs e)
        {
            AddToDebugLog("Emotion API attempt made. #1");
            WebcamBox.Image.Save(CurrentEmotionShotLocation);
            ButtonEmotionRequest();
        }

        //Find emotions in image if requested by Gamemaker.
        private void EmotionWatcher_Created(object sender, FileSystemEventArgs e)
        {
            AddToDebugLog("New Gamemaker Emotion request. #1");
            File.Delete(EmotionRequestLocation);
            WebcamBox.Image.Save(CurrentEmotionShotLocation);
          GamemakerEmotionRequest();
        }






        //Save a screenshot if the button is clicked. 

        private void button10_Click(object sender, EventArgs e)
        {
            WebcamBox.Image.Save(CurrentScreenshotLocation);
            AddToDebugLog("Screenshot created from Camera #1.");

        }





        //Stop the camera stream if the button is clicked.
        private void button7_Click(object sender, EventArgs e)
        {
            Cam.Stop();
            button13.Enabled = false;
            button7.Enabled = false;
            button8.Enabled = true;
            WebcamBox.Visible = false;
            textBox25.Visible = true;
            textBox25.Text = Environment.NewLine + Environment.NewLine + Environment.NewLine + Environment.NewLine + Environment.NewLine + "Video Capture Paused.";
            AddToDebugLog("Stopped camera feed on #1.");


        }


        //Start the camera stream if the button is clicked.
        private void button8_Click(object sender, EventArgs e)
        {
            if (IsUSBDeviceConnected("075D", "045E"))
            {

                try
                {
                    Cam = new AForge.Video.DirectShow.VideoCaptureDevice(


                     @"device:pnp:\\?\usb#vid_045e&pid_075d&mi_00#7&f0c36ed&0&0000#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\global");

                    textBox18.Text = "Lifecam";
                    textBox23.Text = Environment.NewLine + "  " + "> No motion detected yet in #1...";
                    textBox24.Text = Environment.NewLine + "  " + "> No motion detected yet in #2...";
                    textBox19.Text = Environment.NewLine + "No emotions recognised yet.";
                    textBox20.Text = Environment.NewLine + "No text recognised yet.";
                    textBox21.Text = Environment.NewLine + "No image analysed yet.";
                    textBox22.Text = Environment.NewLine + "No colour analysed yet.";

                    Cam.NewFrame += new NewFrameEventHandler(Cam_NewFrame);
                    Cam.Start();

                    EmotionWatcher.Path = Path.GetDirectoryName(BaseDirectory);
                    EmotionWatcher.Filter = Path.GetFileName(EmotionRequestFilename);
                    EmotionWatcher.EnableRaisingEvents = true;
                    EmotionWatcher.Created += new FileSystemEventHandler(EmotionWatcher_Created);

                    VisionWatcher.Path = Path.GetDirectoryName(BaseDirectory);
                    VisionWatcher.Filter = Path.GetFileName(VisionRequestFilename);
                    VisionWatcher.EnableRaisingEvents = true;
                    VisionWatcher.Created += VisionWatcher_Created;

                    ColourWatcher.Path = Path.GetDirectoryName(BaseDirectory);
                    ColourWatcher.Filter = Path.GetFileName(ColourRequestFilename);
                    ColourWatcher.EnableRaisingEvents = true;
                    ColourWatcher.Created += new FileSystemEventHandler(ColourWatcher_Created);

                    AddToDebugLog("Main camera set up just fine with Lifecam.");

                    textBox25.Visible = false;
                    WebcamBox.Visible = true;

                    button7.Enabled = true;
                    button8.Enabled = false;
                    button10.Enabled = true;
                    button13.Enabled = true;


                }
                catch (Exception error)
                {
                    button13.Enabled = false;
                    button12.Enabled = false;
                    button14.Enabled = false;

                    AddToDebugLog("Error with main camera: " + error.ToString());

                    textBox25.Visible = true;
                    WebcamBox.Visible = false;

                    button7.Enabled = false;
                    button8.Enabled = false;
                    button10.Enabled = true;
                }



            }
            //No camera attached gives error message.
            else
            {

                button13.Enabled = false;
                button12.Enabled = false;
                button14.Enabled = false;

                AddToDebugLog("Unknown error with main camera.");

                textBox25.Visible = true;
                WebcamBox.Visible = false;

                button7.Enabled = false;
                button8.Enabled = false;
                button10.Enabled = true;

            }

        }


        //Open the camera and device settings on the PC if the button is clicked.
        private void button9_Click(object sender, EventArgs e)
        {
            string controlpath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.System), "control.exe");

            Process.Start(controlpath, "/name Microsoft.DevicesAndPrinters");

        }

        //Analyse image if button is clicked
        private void button13_Click(object sender, EventArgs e)
        {
            AddToDebugLog("Vision API attempt made #1.");
            WebcamBox.Image.Save(CurrentVisionShotLocation);
            ButtonVisionRequest("1");

        }


        //Analyse image if requested by Gamemaker

        private void VisionWatcher_Created(object sender, FileSystemEventArgs e)
        {
            AddToDebugLog("New Gamemaker Vision request #1.");
            File.Delete(VisionRequestLocation);
            WebcamBox.Image.Save(CurrentVisionShotLocation);
            GamemakerVisionRequest("1");
        }



        //Analyse colours in submitted screenshot and return the results to the text box when button is clicked.
        private void button14_Click(object sender, EventArgs e)
        {
            AddToDebugLog("Colour API attempt made #1.");
            WebcamBox.Image.Save(CurrentColourShotLocation);
            ButtonColourRequest("1");
        }

        //Find colours in image if requested by Gamemaker.

        private void ColourWatcher_Created(object sender, FileSystemEventArgs e)
        {
            AddToDebugLog("New Gamemaker Colour request #1.");
            File.Delete(ColourRequestLocation);
            WebcamBox.Image.Save(CurrentColourShotLocation);
            GamemakerColourRequest("1");
        }




        //-------------------------------------------------------------
        //Cam #2

        //Update Camera Feed

        private void Cam2_NewFrame2(object sender, NewFrameEventArgs eventArgs)
        {
            FrameCount2 += 1;
            WebcamBox2.Image = (Bitmap)eventArgs.Frame.Clone();

            //If motion is not currently being detected, look for it.
            if (CurrentlyInMotion2 == false)
            {

                if (Detector2.ProcessFrame(eventArgs.Frame) > MotionThreshold)
                {
                    textBox24.Text = Environment.NewLine + "  " + "> Motion detected in #2!";
                    using (System.IO.StreamWriter notification = new System.IO.StreamWriter(MotionDetectionSaveLocation2, true))
                    {
                        notification.WriteLine("New motion detected!");
                    }
                    CurrentlyInMotion2 = true;
                    FrameCount2 = 0;
                }
            }
            //If we are in the middle of having motion detected, keep it 'topped up'; after a certain amount of inactivity, reset.
            else if (CurrentlyInMotion2 == true)
            {
                FrameCount2 += 1;
                if (Detector2.ProcessFrame(eventArgs.Frame) > MotionThreshold)
                {
                    textBox24.Text = Environment.NewLine + "  " + "> Motion detected in #2!";
                    FrameCount2 = 0;
                }

                if (FrameCount2 >= 60)
                {
                    textBox24.Text = Environment.NewLine + "  " + "> No motion detected in #2.";
                    FrameCount2 = 0;
                    CurrentlyInMotion2 = false;
                    if (File.Exists(MotionDetectionSaveLocation2))
                    {
                        File.Delete(MotionDetectionSaveLocation2);
                    }
                }
            }
        }


        //Press button to start camera feed.

        private void button17_Click(object sender, EventArgs e)
        {
            if (IsUSBDeviceConnected("0825", "046D"))
            {
                try
                {
                    Cam2 = new AForge.Video.DirectShow.VideoCaptureDevice(
                        @"device:pnp:\\?\usb#vid_046d&pid_0825&mi_00#7&2c7e6b66&0&0000#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\{bbefb6c7-2fc4-4139-bb8b-a58bba724083}");

                    textBox28.Text = "Logitech Camera";

                    textBox23.Text = Environment.NewLine + "  " + "> No motion detected yet in #1...";
                    textBox24.Text = Environment.NewLine + "  " + "> No motion detected yet in #2...";
                    textBox20.Text = Environment.NewLine + "No text recognised yet.";
                    textBox21.Text = Environment.NewLine + "No image analysed yet.";
                    textBox22.Text = Environment.NewLine + "No colour analysed yet.";

                    Cam2.NewFrame += Cam2_NewFrame2;
                    Cam2.Start();


                    OCRWatcher.Path = Path.GetDirectoryName(BaseDirectory);
                    OCRWatcher.Filter = Path.GetFileName(OCRRequestFilename);
                    OCRWatcher.EnableRaisingEvents = true;
                    OCRWatcher.Created += new FileSystemEventHandler(OCRWatcher_Created);

                    VisionWatcher2.Path = Path.GetDirectoryName(BaseDirectory);
                    VisionWatcher2.Filter = Path.GetFileName(VisionRequest2Filename);
                    VisionWatcher2.EnableRaisingEvents = true;
                    VisionWatcher2.Created += VisionWatcher2_Created;

                    ColourWatcher2.Path = Path.GetDirectoryName(BaseDirectory);
                    ColourWatcher2.Filter = Path.GetFileName(ColourRequestFilename2);
                    ColourWatcher2.EnableRaisingEvents = true;
                    ColourWatcher2.Created += ColourWatcher2_Created;


                    AddToDebugLog("Second camera set up just fine.");

                    textBox30.Visible = false;
                    WebcamBox2.Visible = true;

                    button4.Enabled = true;
                    button18.Enabled = true;
                    button17.Enabled = false;
                    button16.Enabled = true;

                }
                catch (Exception error)
                {
                    button4.Enabled = false;
                    button11.Enabled = false;
                    button5.Enabled = false;

                    AddToDebugLog("Error with second camera: " + error.ToString());

                    textBox30.Visible = true;
                    WebcamBox2.Visible = false;

                    button18.Enabled = false;
                    button16.Enabled = false;
                    button17.Enabled = true;
                }
            }
            else
            {
                button4.Enabled = false;
                button11.Enabled = false;
                button5.Enabled = false;

                AddToDebugLog("Error with second camera: Correct camera not detected.");

                textBox30.Visible = true;
                WebcamBox2.Visible = false;

                button18.Enabled = false;
                button16.Enabled = false;
                button17.Enabled = true;
            }


        }

        //Press button to stop camera feed.

        private void button18_Click(object sender, EventArgs e)
        {
            Cam2.Stop();
            button18.Enabled = false;
            button17.Enabled = true;
            WebcamBox2.Visible = false;
            textBox30.Visible = true;
            button4.Enabled = false;
            textBox30.Text = Environment.NewLine + Environment.NewLine + Environment.NewLine + Environment.NewLine + Environment.NewLine + "Video Capture Paused.";
            AddToDebugLog("Stopped camera feed on #2.");
        }

        //Press button to take screenshot.

        private void button16_Click(object sender, EventArgs e)
        {
            WebcamBox2.Image.Save(CurrentScreenshotLocation2);
            AddToDebugLog("Screenshot created from Camera #2.");
        }


        //If requested by Gamemaker, recognise text from webcam frame, and notify Gamemaker.

        private async void OCRWatcher_Created(object sender, FileSystemEventArgs e)
        {
            AddToDebugLog("New Gamemaker OCR request.");
            File.Delete(OCRRequestLocation);
            WebcamBox2.Image.Save(CurrentOCRShotLocation);

            OcrResults Text;
            VisionServiceClient VisionServiceClient = new VisionServiceClient("2a777fba0c084e258a5362446d069d93", "https://westus.api.cognitive.microsoft.com/vision/v1.0");

            try
            {
                using (Stream VisionStream = File.OpenRead(CurrentOCRShotLocation))
                {
                    Text = await VisionServiceClient.RecognizeTextAsync(VisionStream);
                    List<string> TextArray = new List<string>();

                    foreach (var Region in Text.Regions)
                    {
                        foreach (var Line in Region.Lines)
                        {
                            foreach (var Word in Line.Words)
                            {
                                TextArray.Add(Word.Text);
                            }
                        }
                    }

                    var TextArrayFinal = TextArray.ToArray();
                    string FinalText = "";

                    for (int i = 0; i < TextArrayFinal.Length; i++)
                    {
                        FinalText = FinalText + " " + TextArrayFinal[i];
                    }

                    using (System.IO.StreamWriter notification = new System.IO.StreamWriter(EavesdropOCRSubmittedLocation, true))
                    {
                        notification.WriteLine(FinalText);
                    }
                }

            }
            catch (Exception ocrerror)
            {
                Trace.TraceError(ocrerror.ToString());
                textBox20.Text = Environment.NewLine + "Error: " + ocrerror.Message +
                Environment.NewLine + ocrerror.ToString();
                using (System.IO.StreamWriter notification = new System.IO.StreamWriter(EavesdropOCRSubmittedLocation, true))
                {
                    notification.WriteLine("Error.");
                }
            }
        }


        //If button is clicked, capture a webcam frame and use it as an image for OCR.

        private async void button11_Click(object sender, EventArgs e)
        {
            AddToDebugLog("OCR attempt made.");
            textBox20.Text = Environment.NewLine + "Processing text...";
            WebcamBox2.Image.Save(CurrentOCRShotLocation);
            OcrResults Text;
            VisionServiceClient VisionServiceClient = new VisionServiceClient("2a777fba0c084e258a5362446d069d93", "https://westus.api.cognitive.microsoft.com/vision/v1.0");

            try
            {
                using (Stream VisionStream = File.OpenRead(CurrentOCRShotLocation))
                {
                    Text = await VisionServiceClient.RecognizeTextAsync(VisionStream);
                    List<string> TextArray = new List<string>();

                    foreach (var Region in Text.Regions)
                    {
                        foreach (var Line in Region.Lines)
                        {
                            foreach (var Word in Line.Words)
                            {
                                TextArray.Add(Word.Text);
                            }
                        }
                    }

                    var TextArrayFinal = TextArray.ToArray();
                    string FinalText = "";

                    for (int i = 0; i < TextArrayFinal.Length; i++)
                    {
                        FinalText = FinalText + " " + TextArrayFinal[i];
                    }

                    textBox20.Text = Environment.NewLine + FinalText;
                }
            }
            catch (Exception ocrerror)
            {
                Trace.TraceError(ocrerror.ToString());
                textBox20.Text = Environment.NewLine + "Error: " + ocrerror.Message +
                Environment.NewLine + ocrerror.ToString();
            }
        }




        //Analyse image in submitted screenshot and return the results to the text box when button is clicked.

        private void button4_Click(object sender, EventArgs e)
        {
            AddToDebugLog("Vision API attempt made #2.");
            WebcamBox2.Image.Save(CurrentVisionShot2Location);
            ButtonVisionRequest("2");
        }

        //Analyse image if requested by Gamemaker

        private void VisionWatcher2_Created(object sender, FileSystemEventArgs e)
        {

            AddToDebugLog("New Gamemaker Vision request #2.");
            File.Delete(VisionRequest2Location);
            WebcamBox2.Image.Save(CurrentVisionShot2Location);
            GamemakerVisionRequest("2");
        }

        //Analyse Colours In Submitted Screenshot when button clicked.
        private void button5_Click(object sender, EventArgs e)
        {
            AddToDebugLog("Colour API attempt made #2.");
            WebcamBox2.Image.Save(CurrentColourShotLocation2);
            ButtonColourRequest("2");
        }

        //Analyse Colours In Submitted Screenshot when Gamemaker requests it.
        private void ColourWatcher2_Created(object sender, FileSystemEventArgs e)
        {
            AddToDebugLog("New Gamemaker Colour request #2.");
            File.Delete(ColourRequestLocation2);
            WebcamBox2.Image.Save(CurrentColourShotLocation2);
            GamemakerColourRequest("2");
        }




        //---------------------------------------------------------------------

        //------------------------------------- METHODS

        //Add an entry to the Eavesdrop debug log.

        public void AddToDebugLog(string TextToAdd)
        {
            textBox6.AppendText(Environment.NewLine + DateTime.Now + ":  " + TextToAdd);
        }

        //Save a result from Eavesdrop to the corresponding text file.

        public void SaveResultToFile(string Result, string SaveLocationPC)
        {
            string TempSave = File.ReadAllText(SaveLocationPC);
            File.WriteAllText(SaveLocationPC, String.Empty);
            using (System.IO.StreamWriter log = new System.IO.StreamWriter(SaveLocationPC, true))
            {
                log.WriteLine(Result);
                log.WriteLine(TempSave);
            }
            if (File.Exists(NewResultNotificationLocation) == false)
            {
                using (System.IO.StreamWriter notification = new System.IO.StreamWriter(NewResultNotificationLocation, true))
                {
                    notification.WriteLine("New result!");
                }
            }
        }

        //Send Sunmoon Data to a file.

        public void SaveSunMoonResultToFile(string Result, string SaveLocationPC)
        {
            string TempSave = File.ReadAllText(SaveLocationPC);
            File.WriteAllText(SaveLocationPC, String.Empty);
            using (System.IO.StreamWriter log = new System.IO.StreamWriter(SaveLocationPC, true))
            {
                log.WriteLine(Result);
                log.WriteLine(TempSave);
            }
            if (File.Exists(SunMoonNewResultFileLocation) == false)
            {
                using (System.IO.StreamWriter notification = new System.IO.StreamWriter(SunMoonNewResultFileLocation, true))
                {
                    notification.WriteLine("New result!");
                }
            }
        }


        //Get the brightness in the room as a %.

        private static string BrightnessInRoom(Bitmap bm)
        {
            Bitmap SmallBMP = new Bitmap(1, 1);
            using (Graphics g = Graphics.FromImage(SmallBMP))
            {
                g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBilinear;
                g.DrawImage(bm, new System.Drawing.Rectangle(0, 0, 1, 1));
            }
            System.Drawing.Color pixel = SmallBMP.GetPixel(0, 0);

            byte avgR = pixel.R;
            byte avgG = pixel.G;
            byte avgB = pixel.B;

            System.Drawing.Color AvgColor = System.Drawing.Color.FromArgb(avgR, avgG, avgB);
            double Brightness = AvgColor.GetBrightness() * 100;
            double BrightnessClamp = Math.Max(0, Brightness);
            BrightnessClamp = Math.Min(BrightnessClamp, 100);
               
                string FinalBrightness = Brightness.ToString();
          
            return FinalBrightness;

        }

        //Check whether a USB device is connected by its PID and VID.

        public bool IsUSBDeviceConnected(string PID, string VID)
        {
            using (var searcher = new ManagementObjectSearcher(@"Select * From Win32_USBControllerDevice"))
            {
                using (var collection = searcher.Get())
                {
                    foreach (var device in collection)
                    {
                        var usbDevice = Convert.ToString(device);

                        if (usbDevice.Contains(PID) && usbDevice.Contains(VID))
                            return true;
                    }

                }
            }
            return false;
        }

        // Check whether Both Logitechs Are Connected

        public bool AreBothLogitechsConnected()
        {
          
            using (var searcher = new ManagementObjectSearcher(@"Select * From Win32_USBControllerDevice"))
            {
                using (var collection = searcher.Get())
                {
                    foreach (var device in collection)
                    { 
                var usbDevice = Convert.ToString(device);

                if (usbDevice.Contains("0825") && usbDevice.Contains ("046D"))
                        {
                            LTCount += 1;
                        }
                   
            }

        }
    }
            if (LTCount >= 6) {
                return true;
            } else {
                return false;

            }
        }



//Save the log from Eavesdrop to a Debug text file.

public void SaveLogToTextFile()
        {
            using (System.IO.StreamWriter log = new System.IO.StreamWriter(LogLocation, true))
            {

                log.WriteLine();
                log.WriteLine();
                log.WriteLine(DateTime.Now);
                log.WriteLine("================");
                log.WriteLine(textBox1.Text);

            }
        }

        public static bool IsFileReady(String Filename)
        {
            // If the file can be opened for exclusive access it means that the file
            // is no longer locked by another process.
            try
            {
                using (FileStream inputStream = File.Open(Filename, FileMode.Open, FileAccess.Read, FileShare.None))
                {
                    if (inputStream.Length > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
            }
            catch (Exception)
            {
                return false;
            }
        }


        //--------------------------------------------------------------------------------------------------------------------------
        //--------------------------------------------- Speech Methods

        public void SetupAndStartVoiceEngine()
        {
            //------------------------------------ Speech & Audio Recognition

            //Detect if the mic (in the Logitech) is plugged in. If it is, proceed with the recognition.
          
             if (IsUSBDeviceConnected("0825", "046D") == true)
             {
            AddToDebugLog("Correct microphone for voice recognition detected.");

            //Create and initialise the speech recognition, with a UK culture marker.
            GodListener = new SpeechRecognitionEngine(new System.Globalization.CultureInfo("en-UK"));

            //The specific phrases that the god will be able to recognise, split into different grammars.
      

            Choices DebugPhrases = new Choices();
            DebugPhrases.Add(DebugArray);
            Grammar DebugGrammar = new Grammar(DebugPhrases);
            DebugGrammar.Name = "DebugGrammar";


                //-------------
                //A DictationGrammar to handle minor differences.

                DictationGrammar DictationGrammar = new DictationGrammar("grammar:dictation#pronunciation");
            DictationGrammar.Name = "DictationGrammar";

            GodListener.SetInputToDefaultAudioDevice();
            GodListener.LoadGrammar(DictationGrammar);
            GodListener.LoadGrammar(DebugGrammar);
            GodListener.MaxAlternates = 1;
            GodListener.BabbleTimeout = TimeSpan.FromSeconds(1);
            GodListener.InitialSilenceTimeout = TimeSpan.FromSeconds(0);


            //Audio Box defaults.
            radioButton1.Text = "Receiving Audio";
            radioButton1.Checked = true;
            radioButton1.ForeColor = System.Drawing.Color.Red;
            textBox1.Text = "Begin speaking.";
            textBox3.Text = "Silence";
            textBox5.Text = GodAudioLevel.ToString();

            try
            {
               GodListener.RecognizeAsync(RecognizeMode.Multiple);
                AddToDebugLog("Voice recognition begun.");
                textBox3.Text = GodListener.AudioState.ToString();
                 
            }
            //Show up any errors in beginning recognition.
            catch (Exception error)
            {
                radioButton1.Text = "Error...";
                radioButton1.Checked = false;
                GodListener.RecognizeAsyncCancel();
                textBox5.Text = "";
                textBox3.Text = "";
                AddToDebugLog("Error with beginning recognition: " + error.Message);

            }

                //Handling events from audio recognition.
                GodListener.AudioStateChanged += GodListener_AudioStateChanged;
                GodListener.AudioLevelUpdated += GodListener_AudioLevelUpdated;
                GodListener.SpeechRecognitionRejected += GodListener_SpeechRecognitionRejected;
                GodListener.SpeechDetected += GodListener_SpeechDetected;
                GodListener.SpeechRecognized += GodListener_SpeechRecognized;
            }

            else
            {
                AddToDebugLog("Correct microphone not detected, speech recognition disabled.");
                textBox5.Text = "";
                textBox3.Text = "";
                textBox1.Text = "Please connect the correct microphone and restart to enable speech recognition.";
                radioButton1.Text = "Correct Mic Not Connected";
                radioButton1.Checked = false;
                radioButton1.ForeColor = System.Drawing.Color.Black;
            }
    }

   






        //Write a new line of text in the recognition box.

        public void WriteNewLineToRecogLog(string TextToWrite)
        {
            textBox1.AppendText(Environment.NewLine + TextToWrite);
        }



        //Wipe the results from the text result file.

        public void WipeLatestResults()
        {
            File.WriteAllText(TextResultSaveLocation, String.Empty);
        }



        //--------------------------------------------------------------------------------------------------------------------------
        //----------------- Vision Shortcuts


        //Get image tags when button is pressed.
        public async void ButtonVisionRequest(string Cam)
        {
            if (Cam == "1")
            {

                button13.Enabled = false;
                textBox21.Text = Environment.NewLine + "Processing Image...";
                VisionServiceClient VisionServiceClient = new VisionServiceClient("2a777fba0c084e258a5362446d069d93", "https://westus.api.cognitive.microsoft.com/vision/v1.0");
                VisualFeature[] VisionFeature = new VisualFeature[] { VisualFeature.Categories, VisualFeature.Description, VisualFeature.Tags };

                try
                {
                    using (Stream VisionStream = File.OpenRead(CurrentVisionShotLocation))
                    {

                        AnalysisResult VisionResult = await VisionServiceClient.AnalyzeImageAsync(VisionStream, VisionFeature);

                        var TagsLength = VisionResult.Description.Tags.Length;
                        List<string> TagsArray = new List<string>();

                        for (int i = 0; i < TagsLength - 1; i++)
                        {
                            TagsArray.Add(VisionResult.Description.Tags[i]);
                        }

                        var TagsArrayFinal = TagsArray.ToArray();
                        string ImageCaption = "";

                        for (int i2 = 0; i2 < TagsArrayFinal.Length - 1; i2++)
                        {
                            ImageCaption = ImageCaption + Environment.NewLine + TagsArrayFinal[i2];
                        }

                        textBox21.Text = ImageCaption;
                    }
                }

                catch (Exception VisionError)
                {
                    //If there is an error with the API, give visual feedback.
                    AddToDebugLog("Error in recognising image: " + VisionError.ToString());
                    textBox21.Text = "Error in recognising image: " + VisionError.ToString();
                }

                button13.Enabled = true;

            }
            else if (Cam == "2")
            {


                button4.Enabled = false;
                textBox21.Text = Environment.NewLine + "Processing Image...";
                VisionServiceClient VisionServiceClient = new VisionServiceClient("2a777fba0c084e258a5362446d069d93", "https://westus.api.cognitive.microsoft.com/vision/v1.0");
                VisualFeature[] VisionFeature = new VisualFeature[] { VisualFeature.Categories, VisualFeature.Description, VisualFeature.Tags };

                try
                {
                    using (Stream VisionStream = File.OpenRead(CurrentVisionShot2Location))
                    {

                        AnalysisResult VisionResult = await VisionServiceClient.AnalyzeImageAsync(VisionStream, VisionFeature);

                        var TagsLength = VisionResult.Description.Tags.Length;
                        List<string> TagsArray = new List<string>();

                        for (int i = 0; i < TagsLength - 1; i++)
                        {
                            TagsArray.Add(VisionResult.Description.Tags[i]);
                        }

                        var TagsArrayFinal = TagsArray.ToArray();
                        string ImageCaption = "";

                        for (int i2 = 0; i2 < TagsArrayFinal.Length - 1; i2++)
                        {
                            ImageCaption = ImageCaption + Environment.NewLine + TagsArrayFinal[i2];
                        }

                        textBox21.Text = ImageCaption;
                    }
                }

                catch (Exception VisionError)
                {
                    //If there is an error with the API, give visual feedback.
                    AddToDebugLog("Error in recognising image: " + VisionError.ToString());
                    textBox21.Text = "Error in recognising image: " + VisionError.ToString();
                }

                button4.Enabled = true;
            }
        }


        //Get image tags when Gamemaker requests it.
        public async void GamemakerVisionRequest(string Cam)
        {
            if (Cam == "1")
            {
                button13.Enabled = false;
                VisionServiceClient VisionServiceClient = new VisionServiceClient("2a777fba0c084e258a5362446d069d93", "https://westus.api.cognitive.microsoft.com/vision/v1.0");
                VisualFeature[] VisionFeature = new VisualFeature[] { VisualFeature.Categories, VisualFeature.Description, VisualFeature.Tags };

                try
                {
                    using (Stream VisionStream = File.OpenRead(CurrentVisionShotLocation))
                    {

                        AnalysisResult VisionResult = await VisionServiceClient.AnalyzeImageAsync(VisionStream, VisionFeature);

                        var TagsLength = VisionResult.Description.Tags.Length;
                        List<string> TagsArray = new List<string>();

                        for (int i = 0; i < TagsLength - 1; i++)
                        {
                            TagsArray.Add(VisionResult.Description.Tags[i]);
                        }

                        var TagsArrayFinal = TagsArray.ToArray();

                        using (System.IO.StreamWriter notification = new System.IO.StreamWriter(EavesdropVisionSubmittedLocation, true))
                        {
                            for (int i2 = 0; i2 < TagsArrayFinal.Length - 1; i2++)
                            {
                                notification.WriteLine(TagsArrayFinal[i2]);
                            }
                        }
                    }

                }

                catch
                {
                    //If there is an error with the API, give visual feedback.
                    using (System.IO.StreamWriter notification = new System.IO.StreamWriter(EavesdropVisionSubmittedLocation, true))
                    {

                        notification.WriteLine("Colour Error");
                    }
                }

                button13.Enabled = true;

            }
            else if (Cam == "2")
            {
                button4.Enabled = false;
                VisionServiceClient VisionServiceClient = new VisionServiceClient("2a777fba0c084e258a5362446d069d93", "https://westus.api.cognitive.microsoft.com/vision/v1.0");
                VisualFeature[] VisionFeature = new VisualFeature[] { VisualFeature.Categories, VisualFeature.Description, VisualFeature.Tags };

                try
                {
                    using (Stream VisionStream = File.OpenRead(CurrentVisionShot2Location))
                    {

                        AnalysisResult VisionResult = await VisionServiceClient.AnalyzeImageAsync(VisionStream, VisionFeature);

                        var TagsLength = VisionResult.Description.Tags.Length;
                        List<string> TagsArray = new List<string>();

                        for (int i = 0; i < TagsLength - 1; i++)
                        {
                            TagsArray.Add(VisionResult.Description.Tags[i]);
                        }

                        var TagsArrayFinal = TagsArray.ToArray();

                        using (System.IO.StreamWriter notification = new System.IO.StreamWriter(EavesdropVision2SubmittedLocation, true))
                        {
                            for (int i2 = 0; i2 < TagsArrayFinal.Length - 1; i2++)
                            {
                                notification.WriteLine(TagsArrayFinal[i2]);
                            }
                        }
                    }

                }

                catch
                {
                    //If there is an error with the API, give visual feedback.
                    using (System.IO.StreamWriter notification = new System.IO.StreamWriter(EavesdropVision2SubmittedLocation, true))
                    {

                        notification.WriteLine("Colour Error");
                    }
                }

                button4.Enabled = true;


            }
        }


        //Get main colours of the image when button is pressed.
        public async void ButtonColourRequest(string Cam)
        {

            if (Cam == "1")
            {
                button14.Enabled = false;
                textBox22.Text = Environment.NewLine + "Processing Image...";

                VisionServiceClient VisionClient = new VisionServiceClient("2a777fba0c084e258a5362446d069d93", "https://westus.api.cognitive.microsoft.com/vision/v1.0");
                VisualFeature[] VisionFeature = new VisualFeature[] { VisualFeature.Color };

                try
                {
                    using (Stream VisionStream = File.OpenRead(CurrentColourShotLocation))
                    {

                        AnalysisResult VisionResult = await VisionClient.AnalyzeImageAsync(VisionStream, VisionFeature);

                        string DominantColourForeground = VisionResult.Color.DominantColorForeground;
                        string DominantColourBackground = VisionResult.Color.DominantColorBackground;
                        string AccentColour = "#" + VisionResult.Color.AccentColor;
                        var AccentColourConverted = System.Drawing.ColorTranslator.FromHtml(AccentColour);
                        int AccentR = AccentColourConverted.R;
                        int AccentG = AccentColourConverted.G;
                        int AccentB = AccentColourConverted.B;

                        textBox22.Text = Environment.NewLine +
                        "Dominant Colour Foreground: " + DominantColourForeground
                        + Environment.NewLine +
                        "Dominant Colour Background: " + DominantColourBackground
                        + Environment.NewLine +
                        "Accent Colour: " + AccentR.ToString() + ", " + AccentG.ToString() + ", " + AccentB.ToString();
                    }

                }

                catch (Exception VisionError)
                {
                    //If there is an error with the API, give visual feedback.
                    AddToDebugLog("Error in recognising image: " + VisionError.ToString());
                    textBox22.Text = "Error in recognising image: " + VisionError.ToString();
                }

                button14.Enabled = true;

            }
            else if (Cam == "2")
            {
                button5.Enabled = false;
                textBox22.Text = Environment.NewLine + "Processing Image...";

                VisionServiceClient VisionClient = new VisionServiceClient("2a777fba0c084e258a5362446d069d93", "https://westus.api.cognitive.microsoft.com/vision/v1.0");
                VisualFeature[] VisionFeature = new VisualFeature[] { VisualFeature.Color };

                try
                {
                    using (Stream VisionStream = File.OpenRead(CurrentColourShotLocation2))
                    {

                        AnalysisResult VisionResult = await VisionClient.AnalyzeImageAsync(VisionStream, VisionFeature);

                        string DominantColourForeground = VisionResult.Color.DominantColorForeground;
                        string DominantColourBackground = VisionResult.Color.DominantColorBackground;
                        string AccentColour = "#" + VisionResult.Color.AccentColor;
                        var AccentColourConverted = System.Drawing.ColorTranslator.FromHtml(AccentColour);
                        int AccentR = AccentColourConverted.R;
                        int AccentG = AccentColourConverted.G;
                        int AccentB = AccentColourConverted.B;

                        textBox22.Text = Environment.NewLine +
                        "Dominant Colour Foreground: " + DominantColourForeground
                        + Environment.NewLine +
                        "Dominant Colour Background: " + DominantColourBackground
                        + Environment.NewLine +
                        "Accent Colour: " + AccentR.ToString() + ", " + AccentG.ToString() + ", " + AccentB.ToString();
                    }

                }

                catch (Exception VisionError)
                {
                    //If there is an error with the API, give visual feedback.
                    AddToDebugLog("Error in recognising image: " + VisionError.ToString());
                    textBox22.Text = "Error in recognising image: " + VisionError.ToString();
                }

                button5.Enabled = true;
            }


        }




        //Get main colours of image when Gamemaker requests it.
        public async void GamemakerColourRequest(string Cam)
        {

            if (Cam == "1")
            {
                button14.Enabled = false;

                VisionServiceClient VisionClient = new VisionServiceClient("2a777fba0c084e258a5362446d069d93", "https://westus.api.cognitive.microsoft.com/vision/v1.0");
                VisualFeature[] VisionFeature = new VisualFeature[] { VisualFeature.Color };

                try
                {
                    using (Stream VisionStream = File.OpenRead(CurrentColourShotLocation))
                    {

                        AnalysisResult VisionResult = await VisionClient.AnalyzeImageAsync(VisionStream, VisionFeature);

                        string DominantColourForeground = VisionResult.Color.DominantColorForeground;
                        string DominantColourBackground = VisionResult.Color.DominantColorBackground;
                        string AccentColour = "#" + VisionResult.Color.AccentColor;
                        var AccentColourConverted = System.Drawing.ColorTranslator.FromHtml(AccentColour);
                        int AccentR = AccentColourConverted.R;
                        int AccentG = AccentColourConverted.G;
                        int AccentB = AccentColourConverted.B;

                        using (System.IO.StreamWriter notification = new System.IO.StreamWriter(EavesdropColourSubmittedLocation, true))
                        {
                            notification.WriteLine(DominantColourForeground);
                            notification.WriteLine(DominantColourBackground);
                            notification.WriteLine(AccentR.ToString());
                            notification.WriteLine(AccentG.ToString());
                            notification.WriteLine(AccentB.ToString());
                        }
                    }
                }

                catch (Exception VisionError)
                {
                    //If there is an error with the API, give visual feedback.
                    AddToDebugLog("Error in recognising image: " + VisionError.ToString());
                    using (System.IO.StreamWriter notification = new System.IO.StreamWriter(EavesdropColourSubmittedLocation, true))
                    {

                        notification.WriteLine("Colour Error");
                    }
                }
                button14.Enabled = true;
            }
            else if (Cam == "2")
            {

                button5.Enabled = false;

                VisionServiceClient VisionClient = new VisionServiceClient("2a777fba0c084e258a5362446d069d93", "https://westus.api.cognitive.microsoft.com/vision/v1.0");
                VisualFeature[] VisionFeature = new VisualFeature[] { VisualFeature.Color };

                try
                {
                    using (Stream VisionStream = File.OpenRead(CurrentColourShotLocation2))
                    {

                        AnalysisResult VisionResult = await VisionClient.AnalyzeImageAsync(VisionStream, VisionFeature);

                        string DominantColourForeground = VisionResult.Color.DominantColorForeground;
                        string DominantColourBackground = VisionResult.Color.DominantColorBackground;
                        string AccentColour = "#" + VisionResult.Color.AccentColor;
                        var AccentColourConverted = System.Drawing.ColorTranslator.FromHtml(AccentColour);
                        int AccentR = AccentColourConverted.R;
                        int AccentG = AccentColourConverted.G;
                        int AccentB = AccentColourConverted.B;

                        using (System.IO.StreamWriter notification = new System.IO.StreamWriter(EavesdropColourSubmittedLocation2, true))
                        {
                            notification.WriteLine(DominantColourForeground);
                            notification.WriteLine(DominantColourBackground);
                            notification.WriteLine(AccentR.ToString());
                            notification.WriteLine(AccentG.ToString());
                            notification.WriteLine(AccentB.ToString());
                        }
                    }
                }

                catch (Exception VisionError)
                {
                    //If there is an error with the API, give visual feedback.
                    AddToDebugLog("Error in recognising image: " + VisionError.ToString());
                    using (System.IO.StreamWriter notification = new System.IO.StreamWriter(EavesdropColourSubmittedLocation2, true))
                    {

                        notification.WriteLine("Colour Error");
                    }
                }
                button5.Enabled = true;
            }

        }

        static byte[] GetImageAsByteArray(string imageFilePath)
        {
            FileStream fileStream = new FileStream(imageFilePath, FileMode.Open, FileAccess.Read);
            BinaryReader binaryReader = new BinaryReader(fileStream);
            return binaryReader.ReadBytes((int)fileStream.Length);
        }



        // Return a full emotion request.
        public async void ButtonEmotionRequest()
        {

            button12.Enabled = false;
            textBox19.Text = Environment.NewLine + "Processing Image...";

           try
      {
                HttpClient client = new HttpClient();

                // Request headers.
                client.DefaultRequestHeaders.Add(
                    "Ocp-Apim-Subscription-Key", "fb2c14c3363740508a79ae06088917a1");

                // Request parameters. A third optional parameter is "details".
                string requestParameters = "returnFaceId=true&returnFaceLandmarks=false" +
                    "&returnFaceAttributes=age,gender,headPose,smile,facialHair,glasses," +
                    "emotion,hair,makeup,occlusion,accessories,blur,exposure,noise";

                // Assemble the URI for the REST API Call.
                string uri = "https://westus.api.cognitive.microsoft.com/face/v1.0/detect" + "?" + requestParameters;

                HttpResponseMessage response;

                // Request body. Posts a locally stored JPEG image.
                byte[] byteData = GetImageAsByteArray(CurrentEmotionShotLocation);

                using (ByteArrayContent content = new ByteArrayContent(byteData))
                {
                    // This example uses content type "application/octet-stream".
                    // The other content types you can use are "application/json"
                    // and "multipart/form-data".
                    content.Headers.ContentType =
                        new MediaTypeHeaderValue("application/octet-stream");

                    // Execute the REST API call.
                    response = await client.PostAsync(uri, content);

                    // Get the JSON response.
                    contentString = await response.Content.ReadAsStringAsync();


                }

            dynamic DCS = JArray.Parse(contentString);
            dynamic ThisFace = DCS[0];

            textBox19.Text = "";

             
                        int AngerScore = (int)(ThisFace.faceAttributes.emotion.anger * 100);
                        int ContemptScore = (int)(ThisFace.faceAttributes.emotion.contempt * 100);
                        int DisgustScore = (int)(ThisFace.faceAttributes.emotion.disgust * 100);
                        int FearScore = (int)(ThisFace.faceAttributes.emotion.fear * 100);
                        int HappinessScore = (int)(ThisFace.faceAttributes.emotion.happiness * 100);
                        int NeutralScore = (int)(ThisFace.faceAttributes.emotion.neutral * 100);
                        int SadnessScore = (int)(ThisFace.faceAttributes.emotion.sadness * 100);
                        int SurpriseScore = (int)(ThisFace.faceAttributes.emotion.surprise * 100);

                        var Top3 = new int[8];
                        Top3[0] = AngerScore;
                        Top3[1] = ContemptScore;
                        Top3[2] = DisgustScore;
                        Top3[3] = FearScore;
                        Top3[4] = HappinessScore;
                        Top3[5] = NeutralScore;
                        Top3[6] = SadnessScore;
                        Top3[7] = SurpriseScore;

                        Array.Sort(Top3);
                        Array.Reverse(Top3);

                        if (Top3[0] == AngerScore)
                        {
                            FirstString = "Mainly angry, ";
                        }
                        else if (Top3[0] == ContemptScore)
                        {
                            FirstString = "Mainly contemptuous, ";
                        }
                        else if (Top3[0] == DisgustScore)
                        {
                            FirstString = "Mainly disgusted, ";
                        }
                        else if (Top3[0] == FearScore)
                        {
                            FirstString = "Mainly afraid, ";
                        }
                        else if (Top3[0] == HappinessScore)
                        {
                            FirstString = "Mainly happy, ";
                        }
                        else if (Top3[0] == NeutralScore)
                        {
                            FirstString = "Mainly neutral, ";
                        }
                        else if (Top3[0] == SadnessScore)
                        {
                            FirstString = "Mainly sad, ";
                        }
                        else if (Top3[0] == SurpriseScore)
                        {
                            FirstString = "Mainly surprised, ";
                        }

                        if (Top3[1] == AngerScore)
                        {
                            SecondString = "with some anger.";
                        }
                        else if (Top3[1] == ContemptScore)
                        {
                            SecondString = "with some contempt.";
                        }
                        else if (Top3[1] == DisgustScore)
                        {
                            SecondString = "with some disgust.";
                        }
                        else if (Top3[1] == FearScore)
                        {
                            SecondString = "with some fear.";
                        }
                        else if (Top3[1] == HappinessScore)
                        {
                            SecondString = "with some happiness.";
                        }
                        else if (Top3[1] == NeutralScore)
                        {
                            SecondString = "with some neutrality.";
                        }
                        else if (Top3[1] == SadnessScore)
                        {
                            SecondString = "with some sadness.";
                        }
                        else if (Top3[1] == SurpriseScore)
                        {
                            SecondString = "with some surprise.";
                        }



                        textBox19.Text = textBox19.Text +
                        Environment.NewLine + Environment.NewLine +
                        "Anger: " + AngerScore.ToString() + "; "
                        + "Contempt " + ContemptScore.ToString() + "; "
                        + "Disgust " + DisgustScore.ToString() + "; "
                        + "Fear " + FearScore.ToString() + "; "
                        + "Happiness " + HappinessScore.ToString() + "; "
                        + "Neutral " + NeutralScore.ToString() + "; "
                        + "Sadness " + SadnessScore.ToString() + "; "
                        + "Surprise " + SurpriseScore.ToString() + "."

                        + Environment.NewLine + Environment.NewLine +

                        FirstString + SecondString;

            button12.Enabled = true;
        }
        catch (Exception EmotionError)
        {
            //If there is an error with the API, give visual feedback.
            AddToDebugLog("Error in recognising emotions: " + EmotionError.ToString());
            textBox19.Text = "Error in recognising emotions: " + EmotionError.ToString();

        }
       
    }

    //Get the emotions in the image when Gamemaker requests it.
    public async void GamemakerEmotionRequest()
    {
        button12.Enabled = false;
        textBox19.Text = Environment.NewLine + "Processing Image...";


            try
            {
                HttpClient client = new HttpClient();

                // Request headers.
                client.DefaultRequestHeaders.Add(
                    "Ocp-Apim-Subscription-Key", "fb2c14c3363740508a79ae06088917a1");

                // Request parameters. A third optional parameter is "details".
                string requestParameters = "returnFaceId=true&returnFaceLandmarks=false" +
                    "&returnFaceAttributes=age,gender,headPose,smile,facialHair,glasses," +
                    "emotion,hair,makeup,occlusion,accessories,blur,exposure,noise";

                // Assemble the URI for the REST API Call.
                string uri = "https://westus.api.cognitive.microsoft.com/face/v1.0/detect" + "?" + requestParameters;

                HttpResponseMessage response;

                // Request body. Posts a locally stored JPEG image.
                byte[] byteData = GetImageAsByteArray(CurrentEmotionShotLocation);

                using (ByteArrayContent content = new ByteArrayContent(byteData))
                {
                    // This example uses content type "application/octet-stream".
                    // The other content types you can use are "application/json"
                    // and "multipart/form-data".
                    content.Headers.ContentType =
                        new MediaTypeHeaderValue("application/octet-stream");

                    // Execute the REST API call.
                    response = await client.PostAsync(uri, content);

                    // Get the JSON response.
                    contentString = await response.Content.ReadAsStringAsync();


                }

                dynamic DCS = JArray.Parse(contentString);
                dynamic ThisFace = DCS[0];

                textBox19.Text = "";


                int AngerScore = (int)(ThisFace.faceAttributes.emotion.anger * 100);
                int ContemptScore = (int)(ThisFace.faceAttributes.emotion.contempt * 100);
                int DisgustScore = (int)(ThisFace.faceAttributes.emotion.disgust * 100);
                int FearScore = (int)(ThisFace.faceAttributes.emotion.fear * 100);
                int HappinessScore = (int)(ThisFace.faceAttributes.emotion.happiness * 100);
                int NeutralScore = (int)(ThisFace.faceAttributes.emotion.neutral * 100);
                int SadnessScore = (int)(ThisFace.faceAttributes.emotion.sadness * 100);
                int SurpriseScore = (int)(ThisFace.faceAttributes.emotion.surprise * 100);

                var Top3 = new int[8];
                Top3[0] = AngerScore;
                Top3[1] = ContemptScore;
                Top3[2] = DisgustScore;
                Top3[3] = FearScore;
                Top3[4] = HappinessScore;
                Top3[5] = NeutralScore;
                Top3[6] = SadnessScore;
                Top3[7] = SurpriseScore;

                Array.Sort(Top3);
                Array.Reverse(Top3);

                if (Top3[0] == AngerScore)
                {
                    FirstString = "Mainly angry, ";
                }
                else if (Top3[0] == ContemptScore)
                {
                    FirstString = "Mainly contemptuous, ";
                }
                else if (Top3[0] == DisgustScore)
                {
                    FirstString = "Mainly disgusted, ";
                }
                else if (Top3[0] == FearScore)
                {
                    FirstString = "Mainly afraid, ";
                }
                else if (Top3[0] == HappinessScore)
                {
                    FirstString = "Mainly happy, ";
                }
                else if (Top3[0] == NeutralScore)
                {
                    FirstString = "Mainly neutral, ";
                }
                else if (Top3[0] == SadnessScore)
                {
                    FirstString = "Mainly sad, ";
                }
                else if (Top3[0] == SurpriseScore)
                {
                    FirstString = "Mainly surprised, ";
                }

                if (Top3[1] == AngerScore)
                {
                    SecondString = "with some anger.";
                }
                else if (Top3[1] == ContemptScore)
                {
                    SecondString = "with some contempt.";
                }
                else if (Top3[1] == DisgustScore)
                {
                    SecondString = "with some disgust.";
                }
                else if (Top3[1] == FearScore)
                {
                    SecondString = "with some fear.";
                }
                else if (Top3[1] == HappinessScore)
                {
                    SecondString = "with some happiness.";
                }
                else if (Top3[1] == NeutralScore)
                {
                    SecondString = "with some neutrality.";
                }
                else if (Top3[1] == SadnessScore)
                {
                    SecondString = "with some sadness.";
                }
                else if (Top3[1] == SurpriseScore)
                {
                    SecondString = "with some surprise.";
                }



                textBox19.Text = textBox19.Text +
                Environment.NewLine + Environment.NewLine +
                "Anger: " + AngerScore.ToString() + "; "
                + "Contempt " + ContemptScore.ToString() + "; "
                + "Disgust " + DisgustScore.ToString() + "; "
                + "Fear " + FearScore.ToString() + "; "
                + "Happiness " + HappinessScore.ToString() + "; "
                + "Neutral " + NeutralScore.ToString() + "; "
                + "Sadness " + SadnessScore.ToString() + "; "
                + "Surprise " + SurpriseScore.ToString() + "."

                + Environment.NewLine + Environment.NewLine +

                FirstString + SecondString;


                using (System.IO.StreamWriter notification = new System.IO.StreamWriter(EavesdropEmotionSubmittedLocation, true))
                {
                  
                        notification.WriteLine(FirstString);
                        notification.WriteLine(SecondString);
                    }
 
            }
            catch (Exception EmotionError)
            {
                //If there is an error with the API, give visual feedback.
                AddToDebugLog("Error in recognising emotions: " + EmotionError.ToString());
                textBox19.Text = "Error in recognising emotions: " + EmotionError.ToString();
                using (System.IO.StreamWriter notification = new System.IO.StreamWriter(EavesdropEmotionSubmittedLocation, true))
                {

                    notification.WriteLine("Error");

                }

            }

            button12.Enabled = true;

        }



        }
            }
