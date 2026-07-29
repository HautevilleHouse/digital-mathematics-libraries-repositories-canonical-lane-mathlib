import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure PreservationStrategy where
  fixityCheck : Prop
  replicationFactor : Nat
  migrationPlan : Option String
  formatObsolescenceMonitoring : Prop

structure PreservationEvidence (S : PreservationStrategy) where
  fixityCheckClosed : S.fixityCheck
  replicationMet : S.replicationFactor ≥ 2
  formatMonitoringClosed : S.formatObsolescenceMonitoring

def PreservationClosed (S : PreservationStrategy) : Prop :=
  S.fixityCheck ∧ (S.replicationFactor ≥ 2) ∧ S.formatObsolescenceMonitoring

theorem preservation_closed_from_evidence (S : PreservationStrategy) (E : PreservationEvidence S) :
    PreservationClosed S :=
  And.intro E.fixityCheckClosed (And.intro E.replicationMet E.formatMonitoringClosed)

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse