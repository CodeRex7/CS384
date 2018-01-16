%function to simulate a coin toss
function outcome = coinToss
  outcome = rand(1);
  outcome = round(outcome);
  return;
end
