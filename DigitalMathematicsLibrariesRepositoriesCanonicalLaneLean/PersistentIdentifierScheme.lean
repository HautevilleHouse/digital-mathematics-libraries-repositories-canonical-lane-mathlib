import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure PersistentIdentifierScheme where
  schemeName : String
  resolutionEndpoint : String
  identifierSyntax : Prop
  contentNegotiation : Prop

structure IdentifierEvidence (P : PersistentIdentifierScheme) where
  identifierSyntaxClosed : P.identifierSyntax
  contentNegotiationClosed : P.contentNegotiation

def PersistentIdentifierSchemeClosed (P : PersistentIdentifierScheme) : Prop :=
  P.identifierSyntax ∧ P.contentNegotiation

theorem persistent_identifier_scheme_closed_from_evidence (P : PersistentIdentifierScheme) (E : IdentifierEvidence P) :
    PersistentIdentifierSchemeClosed P :=
  And.intro E.identifierSyntaxClosed E.contentNegotiationClosed

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse