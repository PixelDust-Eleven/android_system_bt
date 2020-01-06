/*
 * Copyright 2014 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.bluetooth;

import android.bluetooth.BluetoothAudioConfig;
import android.bluetooth.BluetoothDevice;

/**
 * APIs for Bluetooth A2DP sink service
 *
 * @hide
 */
interface IBluetoothA2dpSink {
    boolean connect(in BluetoothDevice device);
    boolean disconnect(in BluetoothDevice device);
    List<BluetoothDevice> getConnectedDevices();
    List<BluetoothDevice> getDevicesMatchingConnectionStates(in int[] states);
    int getConnectionState(in BluetoothDevice device);
    BluetoothAudioConfig getAudioConfig(in BluetoothDevice device);
    boolean setConnectionPolicy(in BluetoothDevice device, int connectionPolicy);
    int getConnectionPolicy(in BluetoothDevice device);
    boolean isA2dpPlaying(in BluetoothDevice device);
}
