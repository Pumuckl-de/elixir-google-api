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

defmodule GoogleApi.DNS.V1.Model.ResourceRecordSet do
  @moduledoc """
  A unit of data that is returned by the DNS servers.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `dns#resourceRecordSet`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - For example, www.example.com.
  *   `routingPolicy` (*type:* `GoogleApi.DNS.V1.Model.RRSetRoutingPolicy.t`, *default:* `nil`) - Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  *   `rrdatas` (*type:* `list(String.t)`, *default:* `nil`) - As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  *   `signatureRrdatas` (*type:* `list(String.t)`, *default:* `nil`) - As defined in RFC 4034 (section 3.2).
  *   `ttl` (*type:* `integer()`, *default:* `nil`) - Number of seconds that this ResourceRecordSet can be cached by resolvers.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The identifier of a supported record type. See the list of Supported DNS record types.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :routingPolicy => GoogleApi.DNS.V1.Model.RRSetRoutingPolicy.t() | nil,
          :rrdatas => list(String.t()) | nil,
          :signatureRrdatas => list(String.t()) | nil,
          :ttl => integer() | nil,
          :type => String.t() | nil
        }

  field(:kind)
  field(:name)
  field(:routingPolicy, as: GoogleApi.DNS.V1.Model.RRSetRoutingPolicy)
  field(:rrdatas, type: :list)
  field(:signatureRrdatas, type: :list)
  field(:ttl)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.ResourceRecordSet do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.ResourceRecordSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.ResourceRecordSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
