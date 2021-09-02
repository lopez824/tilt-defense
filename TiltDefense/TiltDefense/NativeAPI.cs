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
        //ToggleGyroscope();
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

    public void ToggleGyroscope()
    {
        try
        {
            if (Gyroscope.IsMonitoring)
                Gyroscope.Stop();
            else
                Gyroscope.Start(sensorSpeed);
        }
        catch (FeatureNotSupportedException fnsEx)
        {
            // Feature not supported on device
        }
    }

    public Vector3 Acceleration { get; set; }
    public Vector3 AngularVelocity { get; set; }

    private void Accelerometer_ReadingChanged(object sender, AccelerometerChangedEventArgs e)
    {
        var data = e.Reading;
        Acceleration = data.Acceleration;
        //string tag = "Debuglog";
        //Log.Info(tag, $"X: {Acceleration.X}, Y: {Acceleration.Y}, Z: {Acceleration.Z}");
    }

    void Gyroscope_ReadingChanged(object sender, GyroscopeChangedEventArgs e)
    {
        var data = e.Reading;
        AngularVelocity = data.AngularVelocity;
        string tag = "Debuglog";
        Log.Info(tag, $"X: {AngularVelocity.X}, Y: {AngularVelocity.Y}, Z: {AngularVelocity.Z}");
    }
}