% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kms_operations.R
\name{kms_re_encrypt}
\alias{kms_re_encrypt}
\title{Decrypts ciphertext and then reencrypts it entirely within AWS KMS}
\usage{
kms_re_encrypt(CiphertextBlob, SourceEncryptionContext, SourceKeyId,
  DestinationKeyId, DestinationEncryptionContext,
  SourceEncryptionAlgorithm, DestinationEncryptionAlgorithm, GrantTokens)
}
\arguments{
\item{CiphertextBlob}{[required] Ciphertext of the data to reencrypt.}

\item{SourceEncryptionContext}{Specifies the encryption context to use to decrypt the ciphertext. Enter
the same encryption context that was used to encrypt the ciphertext.

An \emph{encryption context} is a collection of non-secret key-value pairs
that represents additional authenticated data. When you use an
encryption context to encrypt data, you must specify the same (an exact
case-sensitive match) encryption context to decrypt the data. An
encryption context is optional when encrypting with a symmetric CMK, but
it is highly recommended.

For more information, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context}{Encryption Context}
in the \emph{AWS Key Management Service Developer Guide}.}

\item{SourceKeyId}{A unique identifier for the CMK that is used to decrypt the ciphertext
before it reencrypts it using the destination CMK.

This parameter is required only when the ciphertext was encrypted under
an asymmetric CMK. Otherwise, AWS KMS uses the metadata that it adds to
the ciphertext blob to determine which CMK was used to encrypt the
ciphertext. However, you can use this parameter to ensure that a
particular CMK (of any kind) is used to decrypt the ciphertext before it
is reencrypted.

If you specify a \code{KeyId} value, the decrypt part of the \code{ReEncrypt}
operation succeeds only if the specified CMK was used to encrypt the
ciphertext.

To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
name, or alias ARN. When using an alias name, prefix it with \code{"alias/"}.

For example:
\itemize{
\item Key ID: \verb{1234abcd-12ab-34cd-56ef-1234567890ab}
\item Key ARN:
\verb{arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab}
\item Alias name: \code{alias/ExampleAlias}
\item Alias ARN: \code{arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias}
}

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey. To
get the alias name and alias ARN, use ListAliases.}

\item{DestinationKeyId}{[required] A unique identifier for the CMK that is used to reencrypt the data.
Specify a symmetric or asymmetric CMK with a \code{KeyUsage} value of
\code{ENCRYPT_DECRYPT}. To find the \code{KeyUsage} value of a CMK, use the
DescribeKey operation.

To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
name, or alias ARN. When using an alias name, prefix it with \code{"alias/"}.
To specify a CMK in a different AWS account, you must use the key ARN or
alias ARN.

For example:
\itemize{
\item Key ID: \verb{1234abcd-12ab-34cd-56ef-1234567890ab}
\item Key ARN:
\verb{arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab}
\item Alias name: \code{alias/ExampleAlias}
\item Alias ARN: \code{arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias}
}

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey. To
get the alias name and alias ARN, use ListAliases.}

\item{DestinationEncryptionContext}{Specifies that encryption context to use when the reencrypting the data.

A destination encryption context is valid only when the destination CMK
is a symmetric CMK. The standard ciphertext format for asymmetric CMKs
does not include fields for metadata.

An \emph{encryption context} is a collection of non-secret key-value pairs
that represents additional authenticated data. When you use an
encryption context to encrypt data, you must specify the same (an exact
case-sensitive match) encryption context to decrypt the data. An
encryption context is optional when encrypting with a symmetric CMK, but
it is highly recommended.

For more information, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context}{Encryption Context}
in the \emph{AWS Key Management Service Developer Guide}.}

\item{SourceEncryptionAlgorithm}{Specifies the encryption algorithm that AWS KMS will use to decrypt the
ciphertext before it is reencrypted. The default value,
\code{SYMMETRIC_DEFAULT}, represents the algorithm used for symmetric CMKs.

Specify the same algorithm that was used to encrypt the ciphertext. If
you specify a different algorithm, the decrypt attempt fails.

This parameter is required only when the ciphertext was encrypted under
an asymmetric CMK.}

\item{DestinationEncryptionAlgorithm}{Specifies the encryption algorithm that AWS KMS will use to reecrypt the
data after it has decrypted it. The default value, \code{SYMMETRIC_DEFAULT},
represents the encryption algorithm used for symmetric CMKs.

This parameter is required only when the destination CMK is an
asymmetric CMK.}

\item{GrantTokens}{A list of grant tokens.

For more information, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token}{Grant Tokens}
in the \emph{AWS Key Management Service Developer Guide}.}
}
\description{
Decrypts ciphertext and then reencrypts it entirely within AWS KMS. You
can use this operation to change the customer master key (CMK) under
which data is encrypted, such as when you \href{https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-manually}{manually rotate}
a CMK or change the CMK that protects a ciphertext. You can also use it
to reencrypt ciphertext under the same CMK, such as to change the
\href{https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context}{encryption context}
of a ciphertext.
}
\details{
The \code{ReEncrypt} operation can decrypt ciphertext that was encrypted by
using an AWS KMS CMK in an AWS KMS operation, such as Encrypt or
GenerateDataKey. It can also decrypt ciphertext that was encrypted by
using the public key of an \href{https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks}{asymmetric CMK}
outside of AWS KMS. However, it cannot decrypt ciphertext produced by
other libraries, such as the \href{https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/}{AWS Encryption SDK}
or \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html}{Amazon S3 client-side encryption}.
These libraries return a ciphertext format that is incompatible with AWS
KMS.

When you use the \code{ReEncrypt} operation, you need to provide information
for the decrypt operation and the subsequent encrypt operation.
\itemize{
\item If your ciphertext was encrypted under an asymmetric CMK, you must
identify the \emph{source CMK}, that is, the CMK that encrypted the
ciphertext. You must also supply the encryption algorithm that was
used. This information is required to decrypt the data.
\item It is optional, but you can specify a source CMK even when the
ciphertext was encrypted under a symmetric CMK. This ensures that
the ciphertext is decrypted only by using a particular CMK. If the
CMK that you specify cannot decrypt the ciphertext, the \code{ReEncrypt}
operation fails.
\item To reencrypt the data, you must specify the \emph{destination CMK}, that
is, the CMK that re-encrypts the data after it is decrypted. You can
select a symmetric or asymmetric CMK. If the destination CMK is an
asymmetric CMK, you must also provide the encryption algorithm. The
algorithm that you choose must be compatible with the CMK.

When you use an asymmetric CMK to encrypt or reencrypt data, be sure
to record the CMK and encryption algorithm that you choose. You will
be required to provide the same CMK and encryption algorithm when
you decrypt the data. If the CMK and algorithm do not match the
values used to encrypt the data, the decrypt operation fails.

You are not required to supply the CMK ID and encryption algorithm
when you decrypt with symmetric CMKs because AWS KMS stores this
information in the ciphertext blob. AWS KMS cannot store metadata in
ciphertext generated with asymmetric keys. The standard format for
asymmetric key ciphertext does not include configurable fields.
}

Unlike other AWS KMS API operations, \code{ReEncrypt} callers must have two
permissions:
\itemize{
\item \code{kms:ReEncryptFrom} permission on the source CMK
\item \code{kms:ReEncryptTo} permission on the destination CMK
}

To permit reencryption from or to a CMK, include the \code{"kms:ReEncrypt*"}
permission in your \href{https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html}{key policy}.
This permission is automatically included in the key policy when you use
the console to create a CMK. But you must include it manually when you
create a CMK programmatically or when you use the PutKeyPolicy operation
to set a key policy.

The CMK that you use for this operation must be in a compatible key
state. For details, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html}{How Key State Affects Use of a Customer Master Key}
in the \emph{AWS Key Management Service Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$re_encrypt(
  CiphertextBlob = raw,
  SourceEncryptionContext = list(
    "string"
  ),
  SourceKeyId = "string",
  DestinationKeyId = "string",
  DestinationEncryptionContext = list(
    "string"
  ),
  SourceEncryptionAlgorithm = "SYMMETRIC_DEFAULT"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256",
  DestinationEncryptionAlgorithm = "SYMMETRIC_DEFAULT"|"RSAES_OAEP_SHA_1"|"RSAES_OAEP_SHA_256",
  GrantTokens = list(
    "string"
  )
)
}
}

\examples{
\dontrun{
# The following example reencrypts data with the specified CMK.
svc$re_encrypt(
  CiphertextBlob = "<binary data>",
  DestinationKeyId = "0987dcba-09fe-87dc-65ba-ab0987654321"
)
}

}
\keyword{internal}
