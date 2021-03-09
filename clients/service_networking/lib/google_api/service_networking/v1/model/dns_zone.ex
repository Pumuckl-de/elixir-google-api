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

defmodule GoogleApi.ServiceNetworking.V1.Model.DnsZone do
  @moduledoc """
  Represents a DNS zone resource.

  ## Attributes

  *   `dnsSuffix` (*type:* `String.t`, *default:* `nil`) - The DNS name suffix of this zone e.g. `example.com.`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dnsSuffix => String.t() | nil,
          :name => String.t() | nil
        }

  field(:dnsSuffix)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.DnsZone do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.DnsZone.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.DnsZone do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
