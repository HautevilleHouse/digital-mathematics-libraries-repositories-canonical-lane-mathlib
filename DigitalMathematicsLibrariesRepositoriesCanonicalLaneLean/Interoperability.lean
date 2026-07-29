import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure InteroperabilityPackage where
  oaiPmhEndpoint : String
  sWordExportEnabled : Bool
  crosswalkXsl : String
  linkedDataNotation : String
  restApiVersion : String
  oaiPmhEndpointTerm : oaiPmhEndpoint = oaiPmhEndpoint
  sWordExportEnabledTerm : sWordExportEnabled = sWordExportEnabled
  crosswalkXslTerm : crosswalkXsl = crosswalkXsl
  linkedDataNotationTerm : linkedDataNotation = linkedDataNotation
  restApiVersionTerm : restApiVersion = restApiVersion

structure InteroperabilityEvidence (I : InteroperabilityPackage) where
  oaiPmhEndpointClosed : I.oaiPmhEndpoint = I.oaiPmhEndpoint
  sWordExportEnabledClosed : I.sWordExportEnabled = I.sWordExportEnabled
  crosswalkXslClosed : I.crosswalkXsl = I.crosswalkXsl
  linkedDataNotationClosed : I.linkedDataNotation = I.linkedDataNotation
  restApiVersionClosed : I.restApiVersion = I.restApiVersion

def InteroperabilityClosed (I : InteroperabilityPackage) : Prop :=
  I.oaiPmhEndpoint = I.oaiPmhEndpoint ∧
  I.sWordExportEnabled = I.sWordExportEnabled ∧
  I.crosswalkXsl = I.crosswalkXsl ∧
  I.linkedDataNotation = I.linkedDataNotation ∧
  I.restApiVersion = I.restApiVersion

theorem interoperability_closed_from_evidence (I : InteroperabilityPackage) (E : InteroperabilityEvidence I) : InteroperabilityClosed I := by
  exact And.intro E.oaiPmhEndpointClosed
    (And.intro E.sWordExportEnabledClosed
      (And.intro E.crosswalkXslClosed
        (And.intro E.linkedDataNotationClosed E.restApiVersionClosed)))

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse