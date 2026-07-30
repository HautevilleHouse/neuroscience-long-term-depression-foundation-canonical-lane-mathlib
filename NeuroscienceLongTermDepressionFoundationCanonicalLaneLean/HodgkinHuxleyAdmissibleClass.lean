import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure HodgkinHuxleyNeuron where
  v : ℝ
  n : ℝ
  m : ℝ
  h : ℝ
  I_ext : ℝ → ℝ
  gatingKinetics : Prop
  capacitance : ℝ
  gNa : ℝ
  gK : ℝ
  gL : ℝ
  ENa : ℝ
  EK : ℝ
  EL : ℝ
  hhEquations : Prop

structure AdmissibleClass where
  object : HodgkinHuxleyNeuron
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.hhEquations) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse