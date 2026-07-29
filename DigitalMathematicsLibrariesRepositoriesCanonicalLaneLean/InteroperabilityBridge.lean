import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure InteroperabilityBridge where
  sourceFormat : String
  targetFormat : String
  mappingCorrect : Prop
  lossless : Prop
  roundTrip : Prop

structure InteroperabilityBridgeEvidence (I : InteroperabilityBridge) where
  mappingCorrectClosed : I.mappingCorrect
  losslessClosed : I.lossless
  roundTripClosed : I.roundTrip

def InteroperabilityBridgeClosed (I : InteroperabilityBridge) : Prop :=
  I.mappingCorrect ∧ I.lossless ∧ I.roundTrip

theorem interoperability_bridge_closed_from_evidence (I : InteroperabilityBridge)
    (E : InteroperabilityBridgeEvidence I) : InteroperabilityBridgeClosed I := by
  exact And.intro E.mappingCorrectClosed
    (And.intro E.losslessClosed E.roundTripClosed)

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse