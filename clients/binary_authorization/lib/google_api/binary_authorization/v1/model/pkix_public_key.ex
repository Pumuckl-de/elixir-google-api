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

defmodule GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKey do
  @moduledoc """
  A public key in the PkixPublicKey format (see https://tools.ietf.org/html/rfc5280#section-4.1.2.7 for details). Public keys of this type are typically textually encoded using the PEM format.

  ## Attributes

  *   `publicKeyPem` (*type:* `String.t`, *default:* `nil`) - A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13
  *   `signatureAlgorithm` (*type:* `String.t`, *default:* `nil`) - The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :publicKeyPem => String.t() | nil,
          :signatureAlgorithm => String.t() | nil
        }

  field(:publicKeyPem)
  field(:signatureAlgorithm)
end

defimpl Poison.Decoder, for: GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKey do
  def decode(value, options) do
    GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
