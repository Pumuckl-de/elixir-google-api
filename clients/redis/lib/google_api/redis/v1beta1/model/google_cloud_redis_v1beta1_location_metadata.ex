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

defmodule GoogleApi.Redis.V1beta1.Model.GoogleCloudRedisV1beta1LocationMetadata do
  @moduledoc """
  This location metadata represents additional configuration options for a
  given location where a Redis instance may be created. All fields are output
  only. It is returned as content of the
  `google.cloud.location.Location.metadata` field.

  ## Attributes

  *   `availableZones` (*type:* `%{optional(String.t) => GoogleApi.Redis.V1beta1.Model.GoogleCloudRedisV1beta1ZoneMetadata.t}`, *default:* `nil`) - Output only. The set of available zones in the location. The map is keyed
      by the lowercase ID of each zone, as defined by GCE. These keys can be
      specified in `location_id` or `alternative_location_id` fields when
      creating a Redis instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availableZones => %{
            optional(String.t()) =>
              GoogleApi.Redis.V1beta1.Model.GoogleCloudRedisV1beta1ZoneMetadata.t()
          }
        }

  field(:availableZones,
    as: GoogleApi.Redis.V1beta1.Model.GoogleCloudRedisV1beta1ZoneMetadata,
    type: :map
  )
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.GoogleCloudRedisV1beta1LocationMetadata do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.GoogleCloudRedisV1beta1LocationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.GoogleCloudRedisV1beta1LocationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
