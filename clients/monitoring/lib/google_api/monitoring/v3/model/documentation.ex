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

defmodule GoogleApi.Monitoring.V3.Model.Documentation do
  @moduledoc """
  User-defined documentation of the generated notification.

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - The body of the notification, interpreted according to mime_type. The content may not exceed 8,192 Unicode characters and may not exceed more than 10,240 bytes when encoded in UTF-8 format, whichever is smaller. This text can be templatized by using variables (https://cloud.google.com/monitoring/alerts/doc-variables).
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - The format of the content field. Presently, only the value "text/markdown" is supported. See Markdown (https://en.wikipedia.org/wiki/Markdown) for more information.
  *   `subject` (*type:* `String.t`, *default:* `nil`) - A public comment for an internal field, because the linter insists that all fields must have a comment. Sigh.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t() | nil,
          :mimeType => String.t() | nil,
          :subject => String.t() | nil
        }

  field(:content)
  field(:mimeType)
  field(:subject)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Documentation do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.Documentation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.Documentation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
