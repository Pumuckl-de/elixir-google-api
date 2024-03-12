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

defmodule GoogleApi.DNS.V1.Model.RRSetRoutingPolicy do
  @moduledoc """
  A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.

  ## Attributes

  *   `geo` (*type:* `GoogleApi.DNS.V1.Model.RRSetRoutingPolicyGeoPolicy.t`, *default:* `nil`) - 
  *   `healthCheck` (*type:* `String.t`, *default:* `nil`) - The selfLink attribute of the HealthCheck resource to use for this RRSetRoutingPolicy. https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks
  *   `kind` (*type:* `String.t`, *default:* `dns#rRSetRoutingPolicy`) - 
  *   `primaryBackup` (*type:* `GoogleApi.DNS.V1.Model.RRSetRoutingPolicyPrimaryBackupPolicy.t`, *default:* `nil`) - 
  *   `wrr` (*type:* `GoogleApi.DNS.V1.Model.RRSetRoutingPolicyWrrPolicy.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :geo => GoogleApi.DNS.V1.Model.RRSetRoutingPolicyGeoPolicy.t() | nil,
          :healthCheck => String.t() | nil,
          :kind => String.t() | nil,
          :primaryBackup =>
            GoogleApi.DNS.V1.Model.RRSetRoutingPolicyPrimaryBackupPolicy.t() | nil,
          :wrr => GoogleApi.DNS.V1.Model.RRSetRoutingPolicyWrrPolicy.t() | nil
        }

  field(:geo, as: GoogleApi.DNS.V1.Model.RRSetRoutingPolicyGeoPolicy)
  field(:healthCheck)
  field(:kind)
  field(:primaryBackup, as: GoogleApi.DNS.V1.Model.RRSetRoutingPolicyPrimaryBackupPolicy)
  field(:wrr, as: GoogleApi.DNS.V1.Model.RRSetRoutingPolicyWrrPolicy)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.RRSetRoutingPolicy do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.RRSetRoutingPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.RRSetRoutingPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
