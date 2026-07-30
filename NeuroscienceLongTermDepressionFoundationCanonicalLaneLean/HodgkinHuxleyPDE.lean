import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  gatingVariables : Type v
  ionicCurrents : Prop
  channelDynamics : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  ionicCurrentsClosed : H.ionicCurrents
  channelDynamicsClosed : H.channelDynamics
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.ionicCurrents ∧ H.channelDynamics ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.ionicCurrentsClosed (And.intro E.channelDynamicsClosed E.actionPotentialGenerationClosed)

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse