# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceSelectionLog do
  @moduledoc """
  Contains information logged in target device selection. See go/improve-device-targeting-logging for details. Next Id: 23

  ## Attributes

  *   `allDefaultDevices` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDefaultDeviceLog.t)`, *default:* `nil`) - Default settings of all nearby devices Deprecated, use default_devices_log instead.
  *   `allMediaStreamLog` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsAllMediaStreamLog.t`, *default:* `nil`) - Logs all active media sessions.
  *   `availableDevicesLog` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsAvailableDevicesLog.t`, *default:* `nil`) - The list of `available_devices` as they appear in DeviceTargetingContext. This is very useful for debugging diffs between GB and CMP since they have different methods of populating the `available_devices` field.
  *   `counterfactualDeviceSelectionLog` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceSelectionLog.t`, *default:* `nil`) - DeviceSelectionLog for counterfactual logging.
  *   `defaultDevices` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDefaultDeviceLog.t`, *default:* `nil`) - Include default tv and default speaker Deprecated, use all_default_devices below.
  *   `defaultDevicesLog` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDefaultDevicesLog.t`, *default:* `nil`) - 
  *   `devicesStr` (*type:* `list(String.t)`, *default:* `nil`) - Temporaray field for debugging ANDROID_AUTO multi_target_devices punt. This will be removed once we identify the root cause.
  *   `inputErrorLog` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsInputErrorLog.t)`, *default:* `nil`) - 
  *   `localDevice` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceInfoLog.t`, *default:* `nil`) - Now we just log the media sessions on local device Deprecated, use NearbyDevicesLog::LocalDevice instead.
  *   `logDataSource` (*type:* `String.t`, *default:* `nil`) - Indicates which library populated the device_selection_log for this query.
  *   `mediaFocus` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusInfoLog.t`, *default:* `nil`) - The Media Focus information. This field should be populated only when there is a Media Focus. Deprecated, use media_focuses below instead.
  *   `mediaFocusesLog` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusesLog.t`, *default:* `nil`) - Media focuses on all devices.
  *   `nearbyDevicesLog` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsNearbyDevicesLog.t`, *default:* `nil`) - All nearby devices and local device.
  *   `queryAnnotation` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsQueryAnnotationLog.t`, *default:* `nil`) - This should log the query annotation features found in the device, such as the device annotation, the room annotation, and the structure annotation from the query.
  *   `selectionResult` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceSelectionResultLog.t`, *default:* `nil`) - The result of device selection.
  *   `testCodes` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceTargetingTestCode.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allDefaultDevices =>
            list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDefaultDeviceLog.t()) | nil,
          :allMediaStreamLog =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsAllMediaStreamLog.t() | nil,
          :availableDevicesLog =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsAvailableDevicesLog.t() | nil,
          :counterfactualDeviceSelectionLog =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceSelectionLog.t() | nil,
          :defaultDevices =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDefaultDeviceLog.t() | nil,
          :defaultDevicesLog =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDefaultDevicesLog.t() | nil,
          :devicesStr => list(String.t()) | nil,
          :inputErrorLog =>
            list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsInputErrorLog.t()) | nil,
          :localDevice =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceInfoLog.t() | nil,
          :logDataSource => String.t() | nil,
          :mediaFocus =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusInfoLog.t() | nil,
          :mediaFocusesLog =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusesLog.t() | nil,
          :nearbyDevicesLog =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsNearbyDevicesLog.t() | nil,
          :queryAnnotation =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsQueryAnnotationLog.t() | nil,
          :selectionResult =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceSelectionResultLog.t() | nil,
          :testCodes =>
            list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceTargetingTestCode.t())
            | nil
        }

  field(:allDefaultDevices,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDefaultDeviceLog,
    type: :list
  )

  field(:allMediaStreamLog, as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsAllMediaStreamLog)

  field(:availableDevicesLog,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsAvailableDevicesLog
  )

  field(:counterfactualDeviceSelectionLog,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceSelectionLog
  )

  field(:defaultDevices, as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDefaultDeviceLog)

  field(:defaultDevicesLog, as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDefaultDevicesLog)

  field(:devicesStr, type: :list)

  field(:inputErrorLog,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsInputErrorLog,
    type: :list
  )

  field(:localDevice, as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceInfoLog)
  field(:logDataSource)
  field(:mediaFocus, as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusInfoLog)
  field(:mediaFocusesLog, as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaFocusesLog)
  field(:nearbyDevicesLog, as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsNearbyDevicesLog)
  field(:queryAnnotation, as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsQueryAnnotationLog)

  field(:selectionResult,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceSelectionResultLog
  )

  field(:testCodes,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceTargetingTestCode,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceSelectionLog do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceSelectionLog.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceSelectionLog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
