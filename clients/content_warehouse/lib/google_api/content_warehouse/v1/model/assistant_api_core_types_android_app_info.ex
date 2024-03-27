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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesAndroidAppInfo do
  @moduledoc """
  The android app information of the provider. Like, Spotify. Next ID: 17

  ## Attributes

  *   `accountType` (*type:* `String.t`, *default:* `nil`) - 
  *   `activityInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesAndroidAppInfoActivityInfo.t`, *default:* `nil`) - 
  *   `androidIntent` (*type:* `String.t`, *default:* `nil`) - Intent associated with the app. We include intents here as different versions of the same app may support different intents. In those cases, the package_name is not enough to identify the app and we should use the combination of package_name and android_intent. This field might contain sensitive data, if represents ClientOp with encapsulated PII such as user query.
  *   `appUniqueId` (*type:* `String.t`, *default:* `nil`) - Store the app unique id endpoint. This will be passed over to app to fulfill the action.
  *   `appVersion` (*type:* `integer()`, *default:* `nil`) - The android app version. Deprecated because https://developer.android.com/reference/android/content/pm/PackageInfo.html#getLongVersionCode
  *   `dataMimetype` (*type:* `String.t`, *default:* `nil`) - data_mimetype and account_type are the what AGSA uses to filter which contacts support this Android app in ContactProvider.
  *   `isBroadcastIntent` (*type:* `boolean()`, *default:* `nil`) - If true, client should broadcast the intent instead of open the intent.
  *   `isDefault` (*type:* `boolean()`, *default:* `nil`) - App is the default app for it's core functionality. For example, it will be true for Android messages if it is the default app to send and receive SMS on the phone.
  *   `localizedAppName` (*type:* `String.t`, *default:* `nil`) - The localized app name.
  *   `longVersionCode` (*type:* `String.t`, *default:* `nil`) - The long android app version.
  *   `mimetype` (*type:* `String.t`, *default:* `nil`) - Store mimetype of this endpoint. We will use this as the differentiator for Assistant to know whether to use the RawContact for messaging, call or video call. For example, send message mimetype for whatsapp: "vnd.android.cursor.item/vnd.com.whatsapp.profile" voice call mimetype for whatsapp: "vnd.android.cursor.item/vnd.com.whatsapp.voip.call"
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - The android app package of the provider, like "com.spotify.music".
  *   `providerType` (*type:* `String.t`, *default:* `nil`) - The OemProviderType is specific for OEM system Android apps. For example, in Auto Embedded, the OEM will have a system Radio/Media app. The system app’s capabilities/core functionalities are captured here. For physical media sources, the OEM may decide to implement one media app (thus, one package name) that handles multiple physical media sources. For these cases, each physical media source will be sent as different providers even though the package name is the same.
  *   `shortcutId` (*type:* `String.t`, *default:* `nil`) - Id of the app's Android shortcut to be launched by Assistant. The client is expected to use the Android LauncherApps API to execute this shortcut which in turn will open the app. For example, Whatsapp may create an Android shortcut for a frequently messaged contact with an id "contact_123". This field will contain that id and the client can execute it to open up the chat with that particular contact. If this field is set, the package_name field must also be set since both will be used by the LauncherApps API for execution. If this field is set, the intent related fields will be ignored and not used as a fallback. Design: go/shortcut-id-in-provider-open-clientop This field should only be set for devices with Android API level >= 25 (since that is the version from which the LauncherApps startShortcut API is available)
  *   `targetClass` (*type:* `String.t`, *default:* `nil`) - The fully qualified target class name of the provider, like "com.example.myapp.GetOrderService".
  *   `versionName` (*type:* `String.t`, *default:* `nil`) - The android app version name, like "4.1.091.05.40d", "11.2.7.21.alpha". Android Docs: https://developer.android.com/reference/android/content/pm/PackageInfo#versionName
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountType => String.t() | nil,
          :activityInfo =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesAndroidAppInfoActivityInfo.t()
            | nil,
          :androidIntent => String.t() | nil,
          :appUniqueId => String.t() | nil,
          :appVersion => integer() | nil,
          :dataMimetype => String.t() | nil,
          :isBroadcastIntent => boolean() | nil,
          :isDefault => boolean() | nil,
          :localizedAppName => String.t() | nil,
          :longVersionCode => String.t() | nil,
          :mimetype => String.t() | nil,
          :packageName => String.t() | nil,
          :providerType => String.t() | nil,
          :shortcutId => String.t() | nil,
          :targetClass => String.t() | nil,
          :versionName => String.t() | nil
        }

  field(:accountType)

  field(:activityInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesAndroidAppInfoActivityInfo
  )

  field(:androidIntent)
  field(:appUniqueId)
  field(:appVersion)
  field(:dataMimetype)
  field(:isBroadcastIntent)
  field(:isDefault)
  field(:localizedAppName)
  field(:longVersionCode)
  field(:mimetype)
  field(:packageName)
  field(:providerType)
  field(:shortcutId)
  field(:targetClass)
  field(:versionName)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesAndroidAppInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesAndroidAppInfo.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesAndroidAppInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
