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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryResult do
  @moduledoc """
  Represents the result of conversational query or event processing.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - The action name from the matched intent.
  *   `allRequiredParamsPresent` (*type:* `boolean()`, *default:* `nil`) - This field is set to:

      - `false` if the matched intent has required parameters and not all of
         the required parameter values have been collected.
      - `true` if all required parameter values have been collected, or if the
         matched intent doesn't contain any required parameters.
  *   `diagnosticInfo` (*type:* `map()`, *default:* `nil`) - Free-form diagnostic information for the associated detect intent request.
      The fields of this data can change without notice, so you should not write
      code that depends on its structure.
      The data may contain:

      - webhook call latency
      - webhook errors
  *   `fulfillmentMessages` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessage.t)`, *default:* `nil`) - The collection of rich messages to present to the user.
  *   `fulfillmentText` (*type:* `String.t`, *default:* `nil`) - The text to be pronounced to the user or shown on the screen.
      Note: This is a legacy field, `fulfillment_messages` should be preferred.
  *   `intent` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Intent.t`, *default:* `nil`) - The intent that matched the conversational query. Some, not
      all fields are filled in this message, including but not limited to:
      `name`, `display_name`, `end_interaction` and `is_fallback`.
  *   `intentDetectionConfidence` (*type:* `number()`, *default:* `nil`) - The intent detection confidence. Values range from 0.0
      (completely uncertain) to 1.0 (completely certain).
      This value is for informational purpose only and is only used to
      help match the best intent within the classification threshold.
      This value may change for the same end-user expression at any time due to a
      model retraining or change in implementation.
      If there are `multiple knowledge_answers` messages, this value is set to
      the greatest `knowledgeAnswers.match_confidence` value in the list.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - The language that was triggered during intent detection.
      See [Language
      Support](https://cloud.google.com/dialogflow/docs/reference/language)
      for a list of the currently supported language codes.
  *   `outputContexts` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context.t)`, *default:* `nil`) - The collection of output contexts. If applicable,
      `output_contexts.parameters` contains entries with name
      `<parameter name>.original` containing the original parameter values
      before the query.
  *   `parameters` (*type:* `map()`, *default:* `nil`) - The collection of extracted parameters.
  *   `queryText` (*type:* `String.t`, *default:* `nil`) - The original conversational query text:

      - If natural language text was provided as input, `query_text` contains
        a copy of the input.
      - If natural language speech audio was provided as input, `query_text`
        contains the speech recognition result. If speech recognizer produced
        multiple alternatives, a particular one is picked.
      - If automatic spell correction is enabled, `query_text` will contain the
        corrected user input.
  *   `sentimentAnalysisResult` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SentimentAnalysisResult.t`, *default:* `nil`) - The sentiment analysis result, which depends on the
      `sentiment_analysis_request_config` specified in the request.
  *   `speechRecognitionConfidence` (*type:* `number()`, *default:* `nil`) - The Speech recognition confidence between 0.0 and 1.0. A higher number
      indicates an estimated greater likelihood that the recognized words are
      correct. The default of 0.0 is a sentinel value indicating that confidence
      was not set.

      This field is not guaranteed to be accurate or set. In particular this
      field isn't set for StreamingDetectIntent since the streaming endpoint has
      separate confidence estimates per portion of the audio in
      StreamingRecognitionResult.
  *   `webhookPayload` (*type:* `map()`, *default:* `nil`) - If the query was fulfilled by a webhook call, this field is set to the
      value of the `payload` field returned in the webhook response.
  *   `webhookSource` (*type:* `String.t`, *default:* `nil`) - If the query was fulfilled by a webhook call, this field is set to the
      value of the `source` field returned in the webhook response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t(),
          :allRequiredParamsPresent => boolean(),
          :diagnosticInfo => map(),
          :fulfillmentMessages =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessage.t()),
          :fulfillmentText => String.t(),
          :intent => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Intent.t(),
          :intentDetectionConfidence => number(),
          :languageCode => String.t(),
          :outputContexts =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context.t()),
          :parameters => map(),
          :queryText => String.t(),
          :sentimentAnalysisResult =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SentimentAnalysisResult.t(),
          :speechRecognitionConfidence => number(),
          :webhookPayload => map(),
          :webhookSource => String.t()
        }

  field(:action)
  field(:allRequiredParamsPresent)
  field(:diagnosticInfo, type: :map)

  field(:fulfillmentMessages,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessage,
    type: :list
  )

  field(:fulfillmentText)
  field(:intent, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Intent)
  field(:intentDetectionConfidence)
  field(:languageCode)

  field(:outputContexts,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context,
    type: :list
  )

  field(:parameters, type: :map)
  field(:queryText)

  field(:sentimentAnalysisResult,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SentimentAnalysisResult
  )

  field(:speechRecognitionConfidence)
  field(:webhookPayload, type: :map)
  field(:webhookSource)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryResult do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
