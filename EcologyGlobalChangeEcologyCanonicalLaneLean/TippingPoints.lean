import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure TippingElementPackage where
  freshwaterSystems : Prop
  coralReefs : Prop
  iceSheets : Prop
  amazonRainforest : Prop

structure TippingElementEvidence (T : TippingElementPackage) where
  freshwaterSystemsClosed : T.freshwaterSystems
  coralReefsClosed : T.coralReefs
  iceSheetsClosed : T.iceSheets
  amazonRainforestClosed : T.amazonRainforest

def TippingElementClosed (T : TippingElementPackage) : Prop :=
  T.freshwaterSystems ∧ T.coralReefs ∧ T.iceSheets ∧ T.amazonRainforest

theorem tipping_element_closed_from_evidence (T : TippingElementPackage) (E : TippingElementEvidence T) : TippingElementClosed T := by
  exact And.intro E.freshwaterSystemsClosed (And.intro E.coralReefsClosed (And.intro E.iceSheetsClosed E.amazonRainforestClosed))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse