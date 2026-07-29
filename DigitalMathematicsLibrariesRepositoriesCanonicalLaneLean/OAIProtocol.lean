import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

inductive OAIVerb where
  | GetRecord
  | Identify
  | ListIdentifiers
  | ListMetadataFormats
  | ListRecords
  | ListSets

default instance : Inhabited OAIVerb where
  default := OAIVerb.Identify

structure OAIProtocol where
  baseUrl : String
  supportedVerbs : List OAIVerb
  metadataPrefix : String

default instance : Inhabited OAIProtocol where
  default := { baseUrl := "http://example.com/oai", supportedVerbs := [], metadataPrefix := "oai_dc" }

structure OAIProtocolEvidence (O : OAIProtocol) where
  baseUrlValid : O.baseUrl ≠ ""
  supportedVerbsNonempty : O.supportedVerbs ≠ []
  metadataPrefixValid : O.metadataPrefix ≠ ""

def OAIProtocolClosed (O : OAIProtocol) : Prop :=
  O.baseUrl ≠ "" ∧ O.supportedVerbs ≠ [] ∧ O.metadataPrefix ≠ ""

theorem oai_protocol_closed_from_evidence (O : OAIProtocol) (E : OAIProtocolEvidence O) : OAIProtocolClosed O := by
  exact And.intro E.baseUrlValid (And.intro E.supportedVerbsNonempty E.metadataPrefixValid)

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse
