% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_put_voice_connector_proxy}
\alias{chime_put_voice_connector_proxy}
\title{Puts the specified proxy configuration to the specified Amazon Chime
Voice Connector}
\usage{
chime_put_voice_connector_proxy(VoiceConnectorId,
  DefaultSessionExpiryMinutes, PhoneNumberPoolCountries,
  FallBackPhoneNumber, Disabled)
}
\arguments{
\item{VoiceConnectorId}{[required] The Amazon Chime voice connector ID.}

\item{DefaultSessionExpiryMinutes}{[required] The default number of minutes allowed for proxy sessions.}

\item{PhoneNumberPoolCountries}{[required] The countries for proxy phone numbers to be selected from.}

\item{FallBackPhoneNumber}{The phone number to route calls to after a proxy session expires.}

\item{Disabled}{When true, stops proxy sessions from being created on the specified
Amazon Chime Voice Connector.}
}
\description{
Puts the specified proxy configuration to the specified Amazon Chime
Voice Connector.
}
\section{Request syntax}{
\preformatted{svc$put_voice_connector_proxy(
  VoiceConnectorId = "string",
  DefaultSessionExpiryMinutes = 123,
  PhoneNumberPoolCountries = list(
    "string"
  ),
  FallBackPhoneNumber = "string",
  Disabled = TRUE|FALSE
)
}
}

\keyword{internal}
