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

defmodule GoogleApi.ServiceNetworking.V1.Model.Type do
  @moduledoc """
  A protocol buffer message type.

  ## Attributes

  *   `fields` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.Field.t)`, *default:* `nil`) - The list of fields.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The fully qualified message name.
  *   `oneofs` (*type:* `list(String.t)`, *default:* `nil`) - The list of types appearing in `oneof` definitions in this type.
  *   `options` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.Option.t)`, *default:* `nil`) - The protocol buffer options.
  *   `sourceContext` (*type:* `GoogleApi.ServiceNetworking.V1.Model.SourceContext.t`, *default:* `nil`) - The source context.
  *   `syntax` (*type:* `String.t`, *default:* `nil`) - The source syntax.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => list(GoogleApi.ServiceNetworking.V1.Model.Field.t()) | nil,
          :name => String.t() | nil,
          :oneofs => list(String.t()) | nil,
          :options => list(GoogleApi.ServiceNetworking.V1.Model.Option.t()) | nil,
          :sourceContext => GoogleApi.ServiceNetworking.V1.Model.SourceContext.t() | nil,
          :syntax => String.t() | nil
        }

  field(:fields, as: GoogleApi.ServiceNetworking.V1.Model.Field, type: :list)
  field(:name)
  field(:oneofs, type: :list)
  field(:options, as: GoogleApi.ServiceNetworking.V1.Model.Option, type: :list)
  field(:sourceContext, as: GoogleApi.ServiceNetworking.V1.Model.SourceContext)
  field(:syntax)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.Type do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.Type.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.Type do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
