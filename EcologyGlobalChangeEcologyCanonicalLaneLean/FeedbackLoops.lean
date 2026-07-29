import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure FeedbackLoopPackage where
  albedoEffect : Prop
  permafrostMethane : Prop
  carbonCycleSensitivity : Prop
  waterVaporFeedback : Prop

structure FeedbackLoopEvidence (F : FeedbackLoopPackage) where
  albedoEffectClosed : F.albedoEffect
  permafrostMethaneClosed : F.permafrostMethane
  carbonCycleSensitivityClosed : F.carbonCycleSensitivity
  waterVaporFeedbackClosed : F.waterVaporFeedback

def FeedbackLoopClosed (F : FeedbackLoopPackage) : Prop :=
  F.albedoEffect ∧ F.permafrostMethane ∧ F.carbonCycleSensitivity ∧ F.waterVaporFeedback

theorem feedback_loop_closed_from_evidence (F : FeedbackLoopPackage) (E : FeedbackLoopEvidence F) : FeedbackLoopClosed F := by
  exact And.intro E.albedoEffectClosed (And.intro E.permafrostMethaneClosed (And.intro E.carbonCycleSensitivityClosed E.waterVaporFeedbackClosed))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse