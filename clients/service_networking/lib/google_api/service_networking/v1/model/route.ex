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

defmodule GoogleApi.ServiceNetworking.V1.Model.Route do
  @moduledoc """
  Represents a route that was created or discovered by a private access management service.

  ## Attributes

  *   `destRange` (*type:* `String.t`, *default:* `nil`) - Destination CIDR range that this route applies to.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Route name. See https://cloud.google.com/vpc/docs/routes
  *   `network` (*type:* `String.t`, *default:* `nil`) - Fully-qualified URL of the VPC network in the producer host tenant project that this route applies to. For example: `projects/123456/global/networks/host-network`
  *   `nextHopGateway` (*type:* `String.t`, *default:* `nil`) - Fully-qualified URL of the gateway that should handle matching packets that this route applies to. For example: `projects/123456/global/gateways/default-internet-gateway`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destRange => String.t() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :nextHopGateway => String.t() | nil
        }

  field(:destRange)
  field(:name)
  field(:network)
  field(:nextHopGateway)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.Route do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.Route.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.Route do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
