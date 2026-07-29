import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure RepositoryStructurePackage where
  repositoryName : String
  description : String
  sourceControl : String
  branchingModel : String
  issueTracker : String
  packageManager : String
  continuousIntegration : String
  documentationPlatform : String
  repositoryNameTerm : repositoryName = repositoryName
  descriptionTerm : description = description
  sourceControlTerm : sourceControl = sourceControl
  branchingModelTerm : branchingModel = branchingModel
  issueTrackerTerm : issueTracker = issueTracker
  packageManagerTerm : packageManager = packageManager
  continuousIntegrationTerm : continuousIntegration = continuousIntegration
  documentationPlatformTerm : documentationPlatform = documentationPlatform

structure RepositoryStructureEvidence (R : RepositoryStructurePackage) where
  repositoryNameClosed : R.repositoryName = R.repositoryName
  descriptionClosed : R.description = R.description
  sourceControlClosed : R.sourceControl = R.sourceControl
  branchingModelClosed : R.branchingModel = R.branchingModel
  issueTrackerClosed : R.issueTracker = R.issueTracker
  packageManagerClosed : R.packageManager = R.packageManager
  continuousIntegrationClosed : R.continuousIntegration = R.continuousIntegration
  documentationPlatformClosed : R.documentationPlatform = R.documentationPlatform

def RepositoryStructureClosed (R : RepositoryStructurePackage) : Prop :=
  R.repositoryName = R.repositoryName ∧
  R.description = R.description ∧
  R.sourceControl = R.sourceControl ∧
  R.branchingModel = R.branchingModel ∧
  R.issueTracker = R.issueTracker ∧
  R.packageManager = R.packageManager ∧
  R.continuousIntegration = R.continuousIntegration ∧
  R.documentationPlatform = R.documentationPlatform

theorem repository_structure_closed_from_evidence (R : RepositoryStructurePackage) (E : RepositoryStructureEvidence R) : RepositoryStructureClosed R := by
  exact And.intro E.repositoryNameClosed
    (And.intro E.descriptionClosed
      (And.intro E.sourceControlClosed
        (And.intro E.branchingModelClosed
          (And.intro E.issueTrackerClosed
            (And.intro E.packageManagerClosed
              (And.intro E.continuousIntegrationClosed E.documentationPlatformClosed))))))

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse