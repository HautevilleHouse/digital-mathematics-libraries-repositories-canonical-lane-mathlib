import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure MetadataSchemaPackage where
  schemaVersion : String
  titleField : String
  authorField : String
  dateField : String
  subjectField : String
  identifierField : String
  relationField : String
  rightsField : String
  schemaVersionTerm : schemaVersion = schemaVersion
  titleFieldTerm : titleField = titleField
  authorFieldTerm : authorField = authorField
  dateFieldTerm : dateField = dateField
  subjectFieldTerm : subjectField = subjectField
  identifierFieldTerm : identifierField = identifierField
  relationFieldTerm : relationField = relationField
  rightsFieldTerm : rightsField = rightsField

structure MetadataSchemaEvidence (M : MetadataSchemaPackage) where
  schemaVersionClosed : M.schemaVersion = M.schemaVersion
  titleFieldClosed : M.titleField = M.titleField
  authorFieldClosed : M.authorField = M.authorField
  dateFieldClosed : M.dateField = M.dateField
  subjectFieldClosed : M.subjectField = M.subjectField
  identifierFieldClosed : M.identifierField = M.identifierField
  relationFieldClosed : M.relationField = M.relationField
  rightsFieldClosed : M.rightsField = M.rightsField

def MetadataSchemaClosed (M : MetadataSchemaPackage) : Prop :=
  M.schemaVersion = M.schemaVersion ∧
  M.titleField = M.titleField ∧
  M.authorField = M.authorField ∧
  M.dateField = M.dateField ∧
  M.subjectField = M.subjectField ∧
  M.identifierField = M.identifierField ∧
  M.relationField = M.relationField ∧
  M.rightsField = M.rightsField

theorem metadata_schema_closed_from_evidence (M : MetadataSchemaPackage) (E : MetadataSchemaEvidence M) : MetadataSchemaClosed M := by
  exact And.intro E.schemaVersionClosed
    (And.intro E.titleFieldClosed
      (And.intro E.authorFieldClosed
        (And.intro E.dateFieldClosed
          (And.intro E.subjectFieldClosed
            (And.intro E.identifierFieldClosed
              (And.intro E.relationFieldClosed E.rightsFieldClosed))))))

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse