import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean

structure UsageStatisticsPackage where
  downloadTrackingEnabled : Bool
  counterCompliant : Bool
  anonymizedStatsAvailable : Bool
  apiUsageMetrics : Bool
  reportGeneratorUrl : String
  downloadTrackingEnabledTerm : downloadTrackingEnabled = downloadTrackingEnabled
  counterCompliantTerm : counterCompliant = counterCompliant
  anonymizedStatsAvailableTerm : anonymizedStatsAvailable = anonymizedStatsAvailable
  apiUsageMetricsTerm : apiUsageMetrics = apiUsageMetrics
  reportGeneratorUrlTerm : reportGeneratorUrl = reportGeneratorUrl

structure UsageStatisticsEvidence (U : UsageStatisticsPackage) where
  downloadTrackingEnabledClosed : U.downloadTrackingEnabled = U.downloadTrackingEnabled
  counterCompliantClosed : U.counterCompliant = U.counterCompliant
  anonymizedStatsAvailableClosed : U.anonymizedStatsAvailable = U.anonymizedStatsAvailable
  apiUsageMetricsClosed : U.apiUsageMetrics = U.apiUsageMetrics
  reportGeneratorUrlClosed : U.reportGeneratorUrl = U.reportGeneratorUrl

def UsageStatisticsClosed (U : UsageStatisticsPackage) : Prop :=
  U.downloadTrackingEnabled = U.downloadTrackingEnabled ∧
  U.counterCompliant = U.counterCompliant ∧
  U.anonymizedStatsAvailable = U.anonymizedStatsAvailable ∧
  U.apiUsageMetrics = U.apiUsageMetrics ∧
  U.reportGeneratorUrl = U.reportGeneratorUrl

theorem usage_statistics_closed_from_evidence (U : UsageStatisticsPackage) (E : UsageStatisticsEvidence U) : UsageStatisticsClosed U := by
  exact And.intro E.downloadTrackingEnabledClosed
    (And.intro E.counterCompliantClosed
      (And.intro E.anonymizedStatsAvailableClosed
        (And.intro E.apiUsageMetricsClosed E.reportGeneratorUrlClosed)))

end DigitalMathematicsLibrariesRepositoriesCanonicalLaneLean
end HautevilleHouse