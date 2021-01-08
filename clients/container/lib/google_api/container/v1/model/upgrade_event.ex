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

defmodule GoogleApi.Container.V1.Model.UpgradeEvent do
  @moduledoc """
  UpgradeEvent is a notification sent to customers by the cluster server when a resource is upgrading.

  ## Attributes

  *   `currentVersion` (*type:* `String.t`, *default:* `nil`) - The current version before the upgrade.
  *   `operation` (*type:* `String.t`, *default:* `nil`) - The operation associated with this upgrade.
  *   `operationStartTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the operation was started.
  *   `resource` (*type:* `String.t`, *default:* `nil`) - Optional relative path to the resource. For example in node pool upgrades, the relative path of the node pool.
  *   `resourceType` (*type:* `String.t`, *default:* `nil`) - The resource type that is upgrading.
  *   `targetVersion` (*type:* `String.t`, *default:* `nil`) - The target version for the upgrade.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentVersion => String.t(),
          :operation => String.t(),
          :operationStartTime => DateTime.t(),
          :resource => String.t(),
          :resourceType => String.t(),
          :targetVersion => String.t()
        }

  field(:currentVersion)
  field(:operation)
  field(:operationStartTime, as: DateTime)
  field(:resource)
  field(:resourceType)
  field(:targetVersion)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.UpgradeEvent do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.UpgradeEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.UpgradeEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
