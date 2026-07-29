import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure EcologicalRegimeShiftPackage where
  tippingElementIdentified : Prop
  earlyWarningSignalDetected : Prop
  regimeShiftDynamicsModeled : Prop
  resilienceMetricsDefined : Prop

structure EcologicalRegimeShiftEvidence (E : EcologicalRegimeShiftPackage) where
  tippingElementIdentifiedClosed : E.tippingElementIdentified
  earlyWarningSignalDetectedClosed : E.earlyWarningSignalDetected
  regimeShiftDynamicsModeledClosed : E.regimeShiftDynamicsModeled
  resilienceMetricsDefinedClosed : E.resilienceMetricsDefined

def EcologicalRegimeShiftClosed (E : EcologicalRegimeShiftPackage) : Prop :=
  E.tippingElementIdentified ∧ E.earlyWarningSignalDetected ∧
  E.regimeShiftDynamicsModeled ∧ E.resilienceMetricsDefined

theorem ecological_regime_shift_closed_from_evidence (E : EcologicalRegimeShiftPackage)
    (Ev : EcologicalRegimeShiftEvidence E) : EcologicalRegimeShiftClosed E := by
  exact And.intro Ev.tippingElementIdentifiedClosed
    (And.intro Ev.earlyWarningSignalDetectedClosed
      (And.intro Ev.regimeShiftDynamicsModeledClosed Ev.resilienceMetricsDefinedClosed))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse