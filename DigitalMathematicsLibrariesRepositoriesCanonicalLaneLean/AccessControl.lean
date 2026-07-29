import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure AccessControlPackage where
  authenticationMethod : String
  authorizationModel : String
  apiKeyPolicy : String
  rateLimitingRequestsPerMinute : Nat
  ipWhitelistEnabled : Bool
  authenticationMethodTerm : authenticationMethod = authenticationMethod
  authorizationModelTerm : authorizationModel = authorizationModel
  apiKeyPolicyTerm : apiKeyPolicy = apiKeyPolicy
  rateLimitingRequestsPerMinuteTerm : rateLimitingRequestsPerMinute = rateLimitingRequestsPerMinute
  ipWhitelistEnabledTerm : ipWhitelistEnabled = ipWhitelistEnabled

structure AccessControlEvidence (A : AccessControlPackage) where
  authenticationMethodClosed : A.authenticationMethod = A.authenticationMethod
  authorizationModelClosed : A.authorizationModel = A.authorizationModel
  apiKeyPolicyClosed : A.apiKeyPolicy = A.apiKeyPolicy
  rateLimitingRequestsPerMinuteClosed : A.rateLimitingRequestsPerMinute = A.rateLimitingRequestsPerMinute
  ipWhitelistEnabledClosed : A.ipWhitelistEnabled = A.ipWhitelistEnabled

def AccessControlClosed (A : AccessControlPackage) : Prop :=
  A.authenticationMethod = A.authenticationMethod ∧
  A.authorizationModel = A.authorizationModel ∧
  A.apiKeyPolicy = A.apiKeyPolicy ∧
  A.rateLimitingRequestsPerMinute = A.rateLimitingRequestsPerMinute ∧
  A.ipWhitelistEnabled = A.ipWhitelistEnabled

theorem access_control_closed_from_evidence (A : AccessControlPackage) (E : AccessControlEvidence A) : AccessControlClosed A := by
  exact And.intro E.authenticationMethodClosed
    (And.intro E.authorizationModelClosed
      (And.intro E.apiKeyPolicyClosed
        (And.intro E.rateLimitingRequestsPerMinuteClosed E.ipWhitelistEnabledClosed)))

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse