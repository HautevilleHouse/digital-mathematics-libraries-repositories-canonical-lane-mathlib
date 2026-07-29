import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure InteroperabilityProfile where
  oaiPmhEndpoint : Option String
  sWordApi : Option String
  iiifPresentation : Option String
  linkedDataNotation : Option String

structure InteroperabilityEvidence (I : InteroperabilityProfile) where
  atLeastOneProtocolActive : Prop
  mappingFunctionsDefined : Prop

def InteroperabilityClosed (I : InteroperabilityProfile) : Prop :=
  I.oaiPmhEndpoint.isSome ∨ I.sWordApi.isSome ∨ I.iiifPresentation.isSome ∨ I.linkedDataNotation.isSome

theorem interoperability_closed_from_evidence (I : InteroperabilityProfile) (E : InteroperabilityEvidence I) :
    InteroperabilityClosed I :=
  E.atLeastOneProtocolActive

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse