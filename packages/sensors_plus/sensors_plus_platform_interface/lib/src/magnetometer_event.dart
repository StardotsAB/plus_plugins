/// A sensor sample from a magnetometer.
///
/// Magnetometers measure the ambient magnetic field surrounding the sensor,
/// returning values in microteslas ***μT*** for each three-dimensional axis.
///
/// Consider that these samples may bear effects of Earth's magnetic field as
/// well as local factors such as the metal of the device itself or nearby
/// magnets, though most devices compensate for these factors.
///
/// A compass is an example of a general utility for magnetometer data.
class MagnetometerEvent {
  /// Constructs a new instance with the given [x], [y], [z] and [t] values.
  ///
  /// See [MagnetometerEvent] for more information.
  MagnetometerEvent(this.x, this.y, this.z, this.t);

  /// The ambient magnetic field in this axis surrounding the sensor in
  /// microteslas ***μT***.
  final double x, y, z;

  /// The time in nanoseconds at which the event happened.
  final int t;

  @override
  String toString() => '[MagnetometerEvent (x: $x, y: $y, z: $z, t: $t)]';
}
