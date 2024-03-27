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

defmodule GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoChromiumTrace do
  @moduledoc """
  A message to describe the trace events returned by Chromium.

  ## Attributes

  *   `chromiumTrace` (*type:* `String.t`, *default:* `nil`) - Populated if Chromium traces are requested in JSON format.
  *   `chromiumTraceProto` (*type:* `String.t`, *default:* `nil`) - Populated if Chromium traces are requested in PROTO format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chromiumTrace => String.t() | nil,
          :chromiumTraceProto => String.t() | nil
        }

  field(:chromiumTrace)
  field(:chromiumTraceProto)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoChromiumTrace do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoChromiumTrace.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoChromiumTrace do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
