using System.Numerics;
using Xamarin.Essentials;
using Android.Util;

public class NativeAPI
{
    private SensorSpeed sensorSpeed;

    public void Init()
    {
        sensorSpeed = SensorSpeed.Game;
        ToggleAccelerometer();
    }

    public void ToggleAccelerometer()
    {
        try
        {
            if (Accelerometer.IsMonitoring)
            {
                Accelerometer.ReadingChanged -= Accelerometer_ReadingChanged;
                Accelerometer.Stop();
            }
                
            else
            {
                Accelerometer.ReadingChanged += Accelerometer_ReadingChanged;
                Accelerometer.Start(sensorSpeed);
            }
                
        }
        catch (FeatureNotSupportedException fnsEx)
        {
            // Feature not supported on device
        }
    }

    public Vector3 Acceleration { get; set; }

    private void Accelerometer_ReadingChanged(object sender, AccelerometerChangedEventArgs e)
    {
        var data = e.Reading;
        Acceleration = data.Acceleration;
        string tag = "Debuglog";
        Log.Info(tag, $"X: {Acceleration.X}, Y: {Acceleration.Y}, Z: {Acceleration.Z}");
    }
}