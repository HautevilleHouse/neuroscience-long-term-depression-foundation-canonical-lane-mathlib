import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure HodgkinHuxleyEquations where
  membranePotential : Type u
  sodiumCurrent : Type v
  potassiumCurrent : Type w
  leakageCurrent : Type x
  gatingVariables : Type y
  capacitance : Prop
  nernstPotentials : Prop
  ionChannelDynamics : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence (E : HodgkinHuxleyEquations) where
  capacitanceClosed : E.capacitance
  nernstPotentialsClosed : E.nernstPotentials
  ionChannelDynamicsClosed : E.ionChannelDynamics
  actionPotentialGenerationClosed : E.actionPotentialGeneration

def HodgkinHuxleyClosed (E : HodgkinHuxleyEquations) : Prop :=
  E.capacitance ∧ E.nernstPotentials ∧ E.ionChannelDynamics ∧ E.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (E : HodgkinHuxleyEquations) (Ev : HodgkinHuxleyEvidence E) :
    HodgkinHuxleyClosed E := by
  exact And.intro Ev.capacitanceClosed
    (And.intro Ev.nernstPotentialsClosed
      (And.intro Ev.ionChannelDynamicsClosed Ev.actionPotentialGenerationClosed))

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse
