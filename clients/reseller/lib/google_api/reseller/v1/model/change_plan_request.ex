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

defmodule GoogleApi.Reseller.V1.Model.ChangePlanRequest do
  @moduledoc """
  JSON template for the ChangePlan rpc request.

  ## Attributes

  *   `dealCode` (*type:* `String.t`, *default:* `nil`) - Google-issued code (100 char max) for discounted pricing on subscription plans. Deal code must be included in `changePlan` request in order to receive discounted rate. This property is optional. If a deal code has already been added to a subscription, this property may be left empty and the existing discounted rate will still apply (if not empty, only provide the deal code that is already present on the subscription). If a deal code has never been added to a subscription and this property is left blank, regular pricing will apply.
  *   `kind` (*type:* `String.t`, *default:* `subscriptions#changePlanRequest`) - Identifies the resource as a subscription change plan request. Value: `subscriptions#changePlanRequest`
  *   `planName` (*type:* `String.t`, *default:* `nil`) - The `planName` property is required. This is the name of the subscription's payment plan. For more information about the Google payment plans, see API concepts. Possible values are: - `ANNUAL_MONTHLY_PAY` - The annual commitment plan with monthly payments *Caution: *`ANNUAL_MONTHLY_PAY` is returned as `ANNUAL` in all API responses. - `ANNUAL_YEARLY_PAY` - The annual commitment plan with yearly payments - `FLEXIBLE` - The flexible plan - `TRIAL` - The 30-day free trial plan 
  *   `purchaseOrderId` (*type:* `String.t`, *default:* `nil`) - This is an optional property. This purchase order (PO) information is for resellers to use for their company tracking usage. If a `purchaseOrderId` value is given it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters.
  *   `seats` (*type:* `GoogleApi.Reseller.V1.Model.Seats.t`, *default:* `nil`) - This is a required property. The seats property is the number of user seat licenses.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dealCode => String.t() | nil,
          :kind => String.t() | nil,
          :planName => String.t() | nil,
          :purchaseOrderId => String.t() | nil,
          :seats => GoogleApi.Reseller.V1.Model.Seats.t() | nil
        }

  field(:dealCode)
  field(:kind)
  field(:planName)
  field(:purchaseOrderId)
  field(:seats, as: GoogleApi.Reseller.V1.Model.Seats)
end

defimpl Poison.Decoder, for: GoogleApi.Reseller.V1.Model.ChangePlanRequest do
  def decode(value, options) do
    GoogleApi.Reseller.V1.Model.ChangePlanRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Reseller.V1.Model.ChangePlanRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
