using Xamarin.Essentials;
using Android.Util;     // used to access logcat (Android output)

public class AndroidGyro
{
    // Set speed delay for monitoring changes
    private SensorSpeed sensorSpeed = SensorSpeed.UI;

    public void Init()
    {
        Gyroscope.ReadingChanged += Gyroscope_ReadingChanged;
        ToggleGyroscope();
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

    private void Gyroscope_ReadingChanged(object sender, GyroscopeChangedEventArgs e)
    {
        var data = e.Reading;
        // Process Angular Velocity X, Y, and Z reported in rad/s
        string tag = "Debuglog";
        Log.Info(tag, $"Reading... X: {data.AngularVelocity.X}, Y: {data.AngularVelocity.Y}, Z: {data.AngularVelocity.Z}");
    }
}