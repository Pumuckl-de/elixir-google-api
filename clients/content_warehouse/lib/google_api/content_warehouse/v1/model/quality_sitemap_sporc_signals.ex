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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualitySitemapSporcSignals do
  @moduledoc """
  MESSAGE SHOULD ONLY BE POPULATED DURING ONLINE/SERVING TIME.

  ## Attributes

  *   `oslScore` (*type:* `number()`, *default:* `nil`) - Score for normal oneline sitelink
  *   `scrolltoScore` (*type:* `number()`, *default:* `nil`) - Score for scroll-to sitelink
  *   `tocScore` (*type:* `number()`, *default:* `nil`) - Score for table of contents sitelink
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :oslScore => number() | nil,
          :scrolltoScore => number() | nil,
          :tocScore => number() | nil
        }

  field(:oslScore)
  field(:scrolltoScore)
  field(:tocScore)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.QualitySitemapSporcSignals do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualitySitemapSporcSignals.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.QualitySitemapSporcSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
