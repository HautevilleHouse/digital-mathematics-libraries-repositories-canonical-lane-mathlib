import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

inductive PreservationActionType where
  | Migration
  | Normalization
  | Replication
  | Emulation
  | Refreshment

default instance : Inhabited PreservationActionType where
  default := PreservationActionType.Migration

structure PreservationAction where
  actionType : PreservationActionType
  actionDescription : String
  triggerDate : String
  outcome : Prop

default instance : Inhabited PreservationAction where
  default := { actionType := PreservationActionType.Migration, actionDescription := "", triggerDate := "2024-01-01", outcome := True }

structure PreservationActionEvidence (P : PreservationAction) where
  actionDescriptionValid : P.actionDescription ≠ ""
  triggerDateValid : P.triggerDate ≠ ""
  outcomeClosed : P.outcome

def PreservationActionClosed (P : PreservationAction) : Prop :=
  P.actionDescription ≠ "" ∧ P.triggerDate ≠ "" ∧ P.outcome

theorem preservation_action_closed_from_evidence (P : PreservationAction) (E : PreservationActionEvidence P) : PreservationActionClosed P := by
  exact And.intro E.actionDescriptionValid (And.intro E.triggerDateValid E.outcomeClosed)

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse
