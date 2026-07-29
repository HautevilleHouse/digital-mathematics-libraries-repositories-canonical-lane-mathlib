import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure PreservationPackage where
  checksumAlgorithm : String
  fixityCheckIntervalDays : Nat
  backupStrategy : String
  formatRegistryUrl : String
  migrationPlanDocumented : Bool
  checksumAlgorithmTerm : checksumAlgorithm = checksumAlgorithm
  fixityCheckIntervalDaysTerm : fixityCheckIntervalDays = fixityCheckIntervalDays
  backupStrategyTerm : backupStrategy = backupStrategy
  formatRegistryUrlTerm : formatRegistryUrl = formatRegistryUrl
  migrationPlanDocumentedTerm : migrationPlanDocumented = migrationPlanDocumented

structure PreservationEvidence (P : PreservationPackage) where
  checksumAlgorithmClosed : P.checksumAlgorithm = P.checksumAlgorithm
  fixityCheckIntervalDaysClosed : P.fixityCheckIntervalDays = P.fixityCheckIntervalDays
  backupStrategyClosed : P.backupStrategy = P.backupStrategy
  formatRegistryUrlClosed : P.formatRegistryUrl = P.formatRegistryUrl
  migrationPlanDocumentedClosed : P.migrationPlanDocumented = P.migrationPlanDocumented

def PreservationClosed (P : PreservationPackage) : Prop :=
  P.checksumAlgorithm = P.checksumAlgorithm ∧
  P.fixityCheckIntervalDays = P.fixityCheckIntervalDays ∧
  P.backupStrategy = P.backupStrategy ∧
  P.formatRegistryUrl = P.formatRegistryUrl ∧
  P.migrationPlanDocumented = P.migrationPlanDocumented

theorem preservation_closed_from_evidence (P : PreservationPackage) (E : PreservationEvidence P) : PreservationClosed P := by
  exact And.intro E.checksumAlgorithmClosed
    (And.intro E.fixityCheckIntervalDaysClosed
      (And.intro E.backupStrategyClosed
        (And.intro E.formatRegistryUrlClosed E.migrationPlanDocumentedClosed)))

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse