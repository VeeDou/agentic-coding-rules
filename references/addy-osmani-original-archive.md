# Post by @addyosmani

- **作者**: Addy Osmani ([@addyosmani](https://x.com/addyosmani))
- **原文链接**: https://x.com/addyosmani/status/2117512471930167377
- **发布时间**: Tue Nov 03 07:01:29 +0000 2026
- **互动数据**: ❤️ 7759 赞 · 🔁 1074 转发 · 💬 300 评论 · 👁️ 1155693 浏览

---

## 📝 正文内容

# Critical thinking when agents do the work

Back in the day, critical thinking was taught as approaching new info with humble curiosity and a healthy dose of skepticism - take in different views, form your own opinion. Still true, but increasingly, nothing in my day-to-day forces critical thinking on me now that so much of my work runs through agents. For the engineers and product people who have fully bought into agentic workflows (running multiple sessions in parallel and expecting the models to improve), I'm here to say: I'm a big fan of these tools. I'm not writing this to advocate for less agentic workflows.

My goal is to help you maintain critical thinking in a world where it's easy to offload anything to an agent.

In the past, most of our cognitive and aesthetic processing happened in the space between question and answer. That space is now measured in seconds. The more you use agentic workflows, the more difficult it becomes (though not in the way I think people expected): as the models improve, the percentage of obvious errors is lower. Many (most?) outputs will be well-written and mostly correct, but they won't demand a second look.

Even if you are running many agents at a time, you still only have one pair of eyes on the outputs.

You have to build critical thinking into your day, because by default nothing will do it for you.

Part of the reason it's hard to self-correct for this is that agentic workflows are pleasant. Getting fast, pleasant, often-correct answers is refreshing in a busy day, but that's also why it's easy to relax your vigilance.

## Offloading, deferral and surrender

When discussing this with people, I describe it as a spectrum:

At the top: cognitive offloading, the act of delegating tasks to the AI, but maintaining ownership of the result. I do this all day. You should, too. In the middle: deferral, where the output of the tool becomes your new input; the result has ceased to be a hypothesis. At the bottom: cognitive surrender - the AI's output quietly becomes your own, you feel no need to check it.

Cognitive surrender is a term coined by Steven Shaw and Gideon Nave at Wharton. It fits neatly what I've been seeing: as trust (or laziness) increases, people drift down the spectrum. The transition is rarely observed, because the steps are each gradual and seem reasonable. You read the last answer well, so you skim the next one. You just scan the skeleton of the one after that. Then you get asked about a line and can't explain it, even with your agent's help.

That's cognitive surrender. It's how cognitive debt accumulates. It's usually discovered when you try to apply a mental model of the system and it doesn't exist. Margaret-Anne Storey has written about how this shows up in teams as an eroding understanding of a shared system theory. I've written about the code equivalent, comprehension debt (a term coined by Jeremy Twei). In the moment, it's completely invisible. The codebase looks pristine and the tests pass. It doesn't become obvious until you have to make a change to the system and realize that nobody understands it anymore. The same applies when you've read the table of contents of a strategy doc or spec and signed off on it.

To be clear, I'm not advocating for the impossible. It's impossible to maintain the full mental model of a large modern codebase. The Claude Code team has said publicly that they rebuild understanding on demand: when they need to understand a part, they ask Claude to explain that slice, rather than holding the full model in their heads. As I've written about before, this sort of debt is more recoverable than most engineers expect. You don't need to maintain the full model as long as you can rebuild it locally as needed. You just need to know what you don't have.

Where the stakes are low, feel free to delegate entirely. When you can't explain the answer to a question, even by way of your agent, you've ceded ownership. 

This isn't always a problem, either. Just recently, I was recording a course and had to select one out of three similarly-rated hotels to use as a recording location. I didn't have time to manually review all the reviews, so I delegated the decision to an AI. It worked, and I'd do the same thing again. However, I wouldn't do that when deciding how to invest our money, how to advise our kids on their careers, or at work: what we should build, what changes affect what users, whether it's safe to ship. Take the handoff where being wrong is cheap, keep the reasoning where others will have to deal with the consequences.

## The questions I ask myself

When I didn't know what I thought, I'd usually go back to a basic list of questions like these: How do I know that I'm working on the right problem? How do I know that I'm solving it the right way? Is there evidence that supports my conclusion? How do I know that I'm finished? Most times, this is just who, what, where, why, when and how. When written out, it looks absurdly child-like, but it forces you to think in terms of categories that you'd otherwise ignore. These days, it's too easy to simply skip all of this and ask your agent what it thinks you should do. These are the new versions of these questions that I ask myself now.

Did I formulate a hypothesis before asking? Before I run an agent on any non-trivial task, I write down, even just in my head, what I think the answer might be. It's OK if it's a bad guess. You're always welcome to change your mind in light of new information. Once you've read a well-written response, though, it's hard to imagine any other possibility. If you have no guidance whatsoever, ask for what Thariq Shihipar calls a blind spot pass: give the model what you know and have it find your unknown unknowns.

Am I asking it to help me think or to offload thinking from me? Both are OK, as long as you know which one you're doing.

What would have to be true for this to be wrong? Then go find out. A model's self-assessment of confidence is much less valuable than an actual test you can perform, so give it one.

Have I heard the counter argument from a different angle? When I've taken a hard stance on something that's somewhat open-ended, I'll ask more than one model to argue the opposite side, then review the output and form my own opinion. This takes longer, but I end up knowing much more about the subject.

Would I bet on this in front of the person who has to maintain it? This applies to code and to anything else that you're delivering. I believe that this is the bar for answerability.

What am I no longer practicing? Maybe it's some of the routine debugging. I'm OK with letting some of that go, but I want it to be intentional.

## Verification as a habit

I've been writing a lot about verification lately because I believe that the bottleneck has shifted from coding to being sure you're right. When you give an agent the means to verify what it's doing, whether that be by way of end-to-end tests, property tests, or by way of actual app interactions, it can make a change, run the verification test, read the output, and attempt again all before you've looked at anything. This is what Boris Cherny calls "give Claude a way to verify its work" and I believe that this is one of the most critical components of achieving great results. Rather than reading every line, you'll be building these loops and reviewing the evidence.

You can also surrender verification. "Is there evidence that supports my conclusion?" becomes "Did the check turn green?" Agents make it so cheap to create tests that you'll see a lot of green, and you could have a passing test that doesn't catch a broken feature. If the test is written with the same mistake as the feature, it'll pass. And a green check only conveys one property. It's too easy to imagine it covers everything.

When a check goes green, ask what it proved. Then ask what it didn't.

Define "verified" upfront, because post-facto, you'll rationalize any outcome. 

The finish line for agent work should be something tangible: a test passing, a screenshot, a log or trace. This ensures that the criteria for finishing the work is factual, and not up for interpretation (and surrender) based on something like "it looks like it's done." When you receive a finish notification from an agent, before you look at the summary, first review the code snippet of the command executed and its output.

Claude Code can also self-critique (via a subagent in a fresh context) its own work as a sanity check, and it's worth baking that into the loop so it runs every time, not just when you remember. I still ask at the end "Did I miss anything?" That sounds silly, but so often, when I finish some complex feature work using a frontier model, look at it, review it, and then ask, "Did I miss anything?" It will then come back with two or three more things. That's why I always ask.

None of this needs to be the norm, of course; knowing when to go deep is a skill. My favorite rule of thumb from our write-up on how the Claude Code team does code review is: "If you can't say what the checks would miss, ask for a real review rather than a quick approval."

This applies beyond code as well. If an agent has synthesized fifty customer calls for you, or a competitive analysis, check a couple of the source documents to make sure the summary is accurate. Check a number that your recommendation depends on to make sure it's being calculated correctly.

Agents have made verification cheap to set up. What's difficult for you is knowing what good verification looks like.

## Actually paying attention to what's generated

Say an agent gives you a 600-line PR. You roughly look at the structure. You don't read every line. The variable names look reasonable and the tests pass, so you approve it. But somewhere in the middle there's a subtle ordering change in a transaction boundary, or a flipped default on an edge case you never thought about. You did review it, I guess, but only for what you already knew you'd find.

Writing code and reviewing it are different skills, and there's a point where reviewing turns into rubber stamping. So read the diff as if the AI didn't write it, and then look past the diff at what the agent decided. Over a long session it makes a lot of small decisions for you: the defaults, what's out of scope, which requirement it reinterprets when two of them clash.

You won't see any of that in a summary that says everything went well, so ask it to list the decisions and assumptions it made. Then quiz yourself. Pick a few lines at random and ask, what about this line? What about that one? For a document, close it and try to write out the main argument from memory. Some have a habit I like for long sessions: have Claude write a report on the change, and then give you a quiz at the bottom, where the rule is "I only merge after I pass the quiz perfectly."

Understand what you're shipping well enough to defend it. Because at some point, someone could ask.

Agents can also guard your attention. For example, I have an open source project that receives a lot of pull requests. I'll use agents to help determine what's incoming, what's contrary to our guidelines, and where my attention is likely required. I rarely let the agents self-determine this, but they can narrow it down to where I should focus my attention, and then I can actually think about whether these changes are solving the right problem in the right way.

Then there's volume, and you have to be honest with yourself about it. I've called this the orchestration tax. It's the gap between what your agents generate and what you'd feel comfortable putting your name on. If finished work is piling up faster than you can get through it, another session won't help until you've fixed that: tighten the checks so less of it needs you, or slow down.

When you're producing more than you can stand behind, you're no longer reviewing. You're hoping.

## Quality in, quality out

The human mental model is still involved, but instead of in the middle, it's at the front and end. You're putting your energy into the front-end of the task description and context, as well as the back-end of reviewing the output. This is why good input is so important to the quality of output, and I view good prompting as a critical thinking skill.

Historically, if you made a non-specific request, someone would challenge it, and you might realize, "Oh wait, I actually didn't figure this out." An agent often won't stop you there. It fills in what you left out and hands back something that looks done, even though the idea behind it is still fuzzy. I've written about this as intent debt, the implicit goals, constraints and rationale that may exist in artifacts you didn't write. Unlike other kinds of debt, nobody else can fix this one for you. The intent has to come from you.

Your prompt is a reflection of your understanding of the problem, and if you can't express it clearly, it may not be clear in your own mind.

Write your own request brief in your own words before you ask for help. Describe the audience, out-of-scope items, and the definition of done. When your second round of corrections hasn't got you there, stop tweaking and rewrite your prompt.

You can have the agent help you with this too. I like the distinction Andy Clark makes between delegating to an AI system and collaborating with it. In the latter case, you're in a virtuous cycle of mutual amplification: your prompts sharpen your output, sharpen your next prompt and sharpen your mental model of the problem. If it's not clear, ask the agent to interview you about what it doesn't understand. If you close the session having refined your own mental model, that's a sign of success.

Also be careful about the input. It's easy for each agent to just pass the previous agent's summary into its context, and before long the third agent hasn't read the original document.

You also need your own standards for output. I've played around with AI in lots of different creative mediums, and most of it never gets shown because it doesn't meet my standards. Things are all coming out nicely formatted and confident, so polish is no longer a useful signal.

AI may have made it faster to produce, but if I wouldn't feel comfortable attributing the output to myself, I won't output it.

When something doesn't meet your standards, note why in shared config, a hook or a test so that it doesn't happen again. That's how taste compounds, and noting why something didn't make the cut is good practice on its own.

## "But the models will be better at this than me"

If you're as bullish on the future of this space as many people around me are, you've probably had this thought for a couple of sections. In a year or two, the model will be able to detect what I'd be able to detect, so why bother maintaining the skill?

You may be right on a lot of that detection, and I've been arguing for increasingly pushing detection to agents myself. But here's why I think it still matters: at the end of the day, someone is responsible for what ships. Regardless of how much AI helped, a human has to take responsibility.

The question of how much to trust an agent for any given task is itself a judgment call. Part of staying calibrated is reviewing the work, because what the models get wrong keeps changing. Anthropic's own research on its engineers and researchers calls out the trap as the paradox of supervision: "supervising Claude requires the very coding skills that may atrophy from AI overuse."

These are some of the things that matter most to me and that a better model won't solve: what are you building, why is it worth it, who does it impact and what are you willing to sacrifice? Those are all questions you need to answer. An agent can be helpful in working them through, and I would like it to be, but ultimately they're still yours.

You may offload the work and much of the auditing, but not the accountability.

## Practices for the everyday

You don't need to do all this rigorously. Just plug in what works for your workflow.

Once a week, write a bit of code without an agent, or do one real thing that would suck if you forgot how to do it. (I've called this a calibration exercise, but I don't mean it as a moral one.) Once a month, write down what you've stopped doing and decide which of those you're okay not doing. One question from an old blog post of mine remains as valid as ever: How lost would you be if AI didn't exist?

If something is above your comprehension, go learn it. If I'm writing and I run into a phrase I haven't seen before, I could Google a one-line explanation and include it. I prefer to do a little research to properly understand it, so I can see where it fits.

Checking the machine properly is real work, and pretending otherwise is how teams end up not doing it. It isn't free, so schedule it as a line item and you'll actually get it done.

Skills that you stop exercising are going to go away, and probably faster than you might guess. Keep doing the ones you're not willing to let go.

## What to bring with you

- Be intentional. An agent can quiz you, interview you and show you its evidence, but only if you set that up. So set it up.

- Be honest about your place on the spectrum. If you can't explain the answer, even with an agent's help, you've surrendered it.

- Have a hypothesis. Formulate one before asking, even if it's bad.

- A green check means one thing. What did it check? What did it not check?

- Look for evidence. Read what it ran and what it returned before reading the summary.

- Read to know what decisions it made. What did it decide for you?

- Craft your prompt. How you write what you prompt shows how much you understood the problem.

- Set a bar, and stick to it. If you wouldn't put your name on it, it doesn't go out.

Keep yourself in the game by manually applying the skills that matter. One thing you could do: Before you ask, write down what you think will happen, and after the agent is done, write down one thing it didn't check. Let me know if that changes the way you read the output. Think independently. Ask better questions. Take responsibility for the outcome.


---

## 💬 完整评论区（已抓取 154 条真实讨论）

### 🌟 高赞与核心讨论精选

#### #1 Mitttt ([@404Miten](https://x.com/404Miten)) · ❤️ 71

@addyosmani how do juniors build that judgment if they never write the code by hand first?

#### #2 ana ([@cachedeposits](https://x.com/cachedeposits)) · ❤️ 15

@addyosmani no i’m spiritually fat and lazy and the machine does everything for me while i scroll tiktok. you have to sneak the broccoli into my meal

#### #3 Albert ([@alik_ni](https://x.com/alik_ni)) · ❤️ 11

@addyosmani In matter of months we will be reading these kind of articles as a mental attempt how humans (that have had tech skills) tried to justify they still have something to say over what's coming.

Whole thing depicted here is already obsolete.

#### #4 Prof Dr Naseem Naqvi MBE ([@DrNaseemNaqvi](https://x.com/DrNaseemNaqvi)) · ❤️ 5 · 🔁 2

@addyosmani I wrote about it earlier this year:

https://t.co/yxSagUNXGC

#### #5 David Krueger 🦥 ⏸️ ⏹️ ⏪ ([@DavidSKrueger](https://x.com/DavidSKrueger)) · ❤️ 4 · 🔁 1

@addyosmani https://t.co/rs8AaWw6Gj

#### #6 Humayun ([@humayun_x](https://x.com/humayun_x)) · ❤️ 3

@addyosmani Unfortunately this will become the norm we as human tends to want lazy ways of doing things, and with every one using AI to post/ reply to post , i would say people have already stopped thinking and it wont change

#### #7 Bill Burkey ([@crbill](https://x.com/crbill)) · ❤️ 3

@addyosmani Donald Campbell, a psychology heavy hitter, had an applicable method: guess boldly, then try to kill your guess. Ask what else explains it. Trust traces over talk. Any number you manage to gets bent. How?
1. State your explanation
2. List every rival that explains it just as well

#### #8 Raúl Nogales 🇪🇸🇺🇸 ([@raulnogales](https://x.com/raulnogales)) · ❤️ 3

@addyosmani My concern is the juniors. Seniors earned their judgment doing the tedious work by hand for years, and if a new hire never gets those reps, who teaches them what a wrong answer smells like?

#### #9 Johnny Makhoul ([@johnnymakhl](https://x.com/johnnymakhl)) · ❤️ 3

@addyosmani Totally agree. Reading, technical writing, and manually doing leetcode / hackerrank challenges really helps keeping critical thinking in check.

#### #10 Sadly life respecter ([@Sadlylifes41u](https://x.com/Sadlylifes41u)) · ❤️ 2

@addyosmani CC is not an example of code quality but I guess with bad quality but functional enough products u can use agents this way

#### #11 Matt Taylor ([@FSDevNinja](https://x.com/FSDevNinja)) · ❤️ 2

@addyosmani Do you read the diff, or just the summary? 😉

#### #12 Eric Ventor ([@ericvtheg](https://x.com/ericvtheg)) · ❤️ 2

@addyosmani Any examples of you “cognitively surrendering” that caused problems?

#### #13 Ammaru Ahmed Hussain ([@Inc0rr3c7](https://x.com/Inc0rr3c7)) · ❤️ 2

@addyosmani @grok read the article and explain it to me like you will explain it to a caveman.

#### #14 Hitarth Kanakia ([@hitarthk15](https://x.com/hitarthk15)) · ❤️ 2

@addyosmani I really want to follow this and be mindful of were I cognitively surrender. However, when I see announcements of frontier models solving extremely hard problems in various disciplines with a pretty artless prompt, it skews my perspective on the actual capabilities of the model

#### #15 Jonathan Franklin ([@RedshirtSeniors](https://x.com/RedshirtSeniors)) · ❤️ 2

@addyosmani Thanks for sharing this. We checked our agent repos against this. Most of it was already rules. The miss: a rule said that after round 3 the agent should reconsider with us. It reconsidered alone and ran three more rounds. Surrender isn’t only us drifting down. The agent can

#### #16 Moustafa Alzantot ([@m_alzantot2](https://x.com/m_alzantot2)) · ❤️ 2

@addyosmani @addyosmani well said , worth adding . The risk is order of magnitudes larger for junior engineers and students who are starting their careers in computer science and might ask: why bother mastering X if an agent can do this to me

#### #17 野性与智慧/Wildness and Wisdom ([@Steph17225419](https://x.com/Steph17225419)) · ❤️ 1

@addyosmani It is like let a 3 year child to challenge the suggestion of an adult. 

I agree critical thinking, or even cognitive thinking itself is very important, but ineviatably we are losing it because of the growing capability of AI. 

a brain-gym is needed

#### #18 orca apologist ([@sonikudzu](https://x.com/sonikudzu)) · ❤️ 1

@addyosmani great advice, thanks for sharing! I have a question: I end up keeping the pieces like this in my twitter bookmarks, but is there a place on anthropic’s website where pieces like this from the team are posted together? Sometimes it can be hard to find the one I’m recalling when

#### #19 derjurgen232 ([@derjurgen274196](https://x.com/derjurgen274196)) · ❤️ 1

@addyosmani @grok can you tell me the main message in two sentences

#### #20 liuyang ([@liu_yang67914](https://x.com/liu_yang67914)) · ❤️ 1

@addyosmani Really resonates.
I’ve been experimenting with gan-zhong-xue, an open-source skill that uses a guess → reveal → principle loop to help me better understand what agents produce, rather than just accept the output.
Still a work in progress:
https://t.co/Cvm44j8rFP


---

### 📜 全部评论顺序列表

**1. @404Miten (Mitttt) (❤️ 71)**:
> @addyosmani how do juniors build that judgment if they never write the code by hand first?

**2. @alik_ni (Albert) (❤️ 11)**:
> @addyosmani In matter of months we will be reading these kind of articles as a mental attempt how humans (that have had tech skills) tried to justify they still have something to say over what's coming.
> 
> Whole thing depicted here is already obsolete.

**3. @DrNaseemNaqvi (Prof Dr Naseem Naqvi MBE) (❤️ 5)**:
> @addyosmani I wrote about it earlier this year:
> 
> https://t.co/yxSagUNXGC

**4. @humayun_x (Humayun) (❤️ 3)**:
> @addyosmani Unfortunately this will become the norm we as human tends to want lazy ways of doing things, and with every one using AI to post/ reply to post , i would say people have already stopped thinking and it wont change

**5. @crbill (Bill Burkey) (❤️ 3)**:
> @addyosmani Donald Campbell, a psychology heavy hitter, had an applicable method: guess boldly, then try to kill your guess. Ask what else explains it. Trust traces over talk. Any number you manage to gets bent. How?
> 1. State your explanation
> 2. List every rival that explains it just as well

**6. @DavidSKrueger (David Krueger 🦥 ⏸️ ⏹️ ⏪) (❤️ 4)**:
> @addyosmani https://t.co/rs8AaWw6Gj

**7. @cachedeposits (ana) (❤️ 15)**:
> @addyosmani no i’m spiritually fat and lazy and the machine does everything for me while i scroll tiktok. you have to sneak the broccoli into my meal

**8. @Sadlylifes41u (Sadly life respecter) (❤️ 2)**:
> @addyosmani CC is not an example of code quality but I guess with bad quality but functional enough products u can use agents this way

**9. @FSDevNinja (Matt Taylor) (❤️ 2)**:
> @addyosmani Do you read the diff, or just the summary? 😉

**10. @raulnogales (Raúl Nogales 🇪🇸🇺🇸) (❤️ 3)**:
> @addyosmani My concern is the juniors. Seniors earned their judgment doing the tedious work by hand for years, and if a new hire never gets those reps, who teaches them what a wrong answer smells like?

**11. @Steph17225419 (野性与智慧/Wildness and Wisdom) (❤️ 1)**:
> @addyosmani It is like let a 3 year child to challenge the suggestion of an adult. 
> 
> I agree critical thinking, or even cognitive thinking itself is very important, but ineviatably we are losing it because of the growing capability of AI. 
> 
> a brain-gym is needed

**12. @ericvtheg (Eric Ventor) (❤️ 2)**:
> @addyosmani Any examples of you “cognitively surrendering” that caused problems?

**13. @KangshunZ30083 (Lyra)**:
> @addyosmani Profound insights! You're helpful. As a China cs student, Agents help me do work that far beyond my capability, I'd like to find a way learning by doing.The view actually helpful~

**14. @0xFlopper (unknown)**:
> @addyosmani While I agree with most of this, what is your argument to not knowing machine code and offloading your thoughts and comprehension to it to compile your code? Writing code was just a layer of abstraction to the machine code. Prompting AI agents is the next iteration to that.

**15. @drkcgntn (_a___________)**:
> @addyosmani And yet no. What does the software engineer know of the hardware? What does the driver know of the engine? The janitor of the school? Accept the change, accept the abstraction.

**16. @_theonly1me (atchyut)**:
> @addyosmani I've been advocating for this for sometime. I use agents heavily now and it makes no sense not to use them, but this is really important. Small stuff helps me, like actually reading things properly when I feel like skimming. You have to be deliberate about it and make it second

**17. @sonikudzu (orca apologist) (❤️ 1)**:
> @addyosmani great advice, thanks for sharing! I have a question: I end up keeping the pieces like this in my twitter bookmarks, but is there a place on anthropic’s website where pieces like this from the team are posted together? Sometimes it can be hard to find the one I’m recalling when

**18. @stanxq (██████RD)**:
> @addyosmani I think all of us who started coding when IDEs hadn't become that mainstream, and we had codeblocks, the immediate thing that you noticed besides how fascinating code was, was how complicated and not meant for people it was. Humans always had to come down to machine level and

**19. @JonsTechYT (JonsTech)**:
> @addyosmani Reviewing it like a juniors PR is a good shout, when the code comes back that fast its too easy to just hit merge

**20. @Inc0rr3c7 (Ammaru Ahmed Hussain) (❤️ 2)**:
> @addyosmani @grok read the article and explain it to me like you will explain it to a caveman.

**21. @jackiechan27814 (jackie chan)**:
> @addyosmani @bot 翻译全文

**22. @ctechdiva (Cheryl A)**:
> @addyosmani This is a good application and I see a lot of the things I am already doing. Great when it aligns, but I also see the areas to sharpen and improve.

**23. @thomaspower (Thomas Power)**:
> @addyosmani We can delegate the work, and even much of the checking. 
> 
> We can’t delegate our judgment or our accountability.
> 
> The real test is whether we can explain why we trust the answer, what evidence supports it, and what remains unchecked. 
> 
> AI can multiply our capacity; the person

**24. @JayaGup10 (Jaya Gupta)**:
> @addyosmani Great blog

**25. @CyrilCoste (Cyril Coste #DigitalTransformation)**:
> @addyosmani Your point about agents summarising fifty customer calls that something that applies to every product team.
>  
> A simple rule: no AI summary feeds a roadmap decision unless each key claim links to the call it came from.

**26. @derjurgen274196 (derjurgen232) (❤️ 1)**:
> @addyosmani @grok can you tell me the main message in two sentences

**27. @NdbQhn (נדב מאיר קהן)**:
> @addyosmani @grok summarise it for me in key points so I would understand everything as if I read it

**28. @hitarthk15 (Hitarth Kanakia) (❤️ 2)**:
> @addyosmani I really want to follow this and be mindful of were I cognitively surrender. However, when I see announcements of frontier models solving extremely hard problems in various disciplines with a pretty artless prompt, it skews my perspective on the actual capabilities of the model

**29. @johnnymakhl (Johnny Makhoul) (❤️ 3)**:
> @addyosmani Totally agree. Reading, technical writing, and manually doing leetcode / hackerrank challenges really helps keeping critical thinking in check.

**30. @liu_yang67914 (liuyang) (❤️ 1)**:
> @addyosmani Really resonates.
> I’ve been experimenting with gan-zhong-xue, an open-source skill that uses a guess → reveal → principle loop to help me better understand what agents produce, rather than just accept the output.
> Still a work in progress:
> https://t.co/Cvm44j8rFP

**31. @cserbo_liu (cserbo)**:
> @addyosmani @bot 把这篇文章收藏起来

**32. @RedshirtSeniors (Jonathan Franklin) (❤️ 2)**:
> @addyosmani Thanks for sharing this. We checked our agent repos against this. Most of it was already rules. The miss: a rule said that after round 3 the agent should reconsider with us. It reconsidered alone and ran three more rounds. Surrender isn’t only us drifting down. The agent can

**33. @m_alzantot2 (Moustafa Alzantot) (❤️ 2)**:
> @addyosmani @addyosmani well said , worth adding . The risk is order of magnitudes larger for junior engineers and students who are starting their careers in computer science and might ask: why bother mastering X if an agent can do this to me

**34. @Trowlcodes (Torben) (❤️ 1)**:
> @addyosmani The Problem is, writing code by hand with AI assistance for complex tasks and outsource simple ones are good to really retain that critical thinking, but in Company settings often it is seen as unproductive and they want everything asap which means devs cant keep their skills

**35. @gabedrawsX (gabedraws) (❤️ 1)**:
> @addyosmani I've experienced this phenomenon many times, as an attorney who is always trying to teach GPT or Claude how to draft and revise agreements. It mirrors being a Partner and training an Associate--and I spend a decade doing that. And without having done that, I don't think I could

**36. @mretsal (Marcelo Retana)**:
> @addyosmani Un hábito concreto: revisar el diff, no el resumen. El resumen del agente casi siempre dice "listo". El criterio está en leer lo que de verdad cambió.

**37. @behan_chris (𝐂𝐡𝐫𝐢𝐬 𝐁𝐞𝐡𝐚𝐧)**:
> @addyosmani This seems at odds with "We merge over 30,000 code changes per day!" https://t.co/EQOgIvcnDU

**38. @sufyanbuild (Sufyan) (❤️ 1)**:
> @addyosmani Loved the idea of cognitive surrender vs cognitive offloading. 
> 
> Its still harder to trust agents over critical thinking, but yes good for finding more knowledge.

**39. @ngooran (Navid Gooran)**:
> @addyosmani Addy is right about this. when Claude Code gives you clean code that fast, it's really easy to just say yes. I think the trick is knowing what you expect before you read the diff

**40. @aceee42923 (Aceee Li) (❤️ 1)**:
> @addyosmani Despite the project development, the comprehension debt constantly accumulates. I just opaquely know what the model has done.

**41. @DawnBuilderLei (lendea)**:
> @addyosmani @bot 帮我看这篇文章讲了什么

**42. @varunkandu (Varun Kandukuri)**:
> @addyosmani I’ve been thinking about this a lot lately. The perceived lack of effort we put into producing artifacts at work has had the net effect of other human reviewers being dismissive of whatever each person has done to steer the model to produce said artifact. Idk a long term solution

**43. @acejou27 (周振家)**:
> @addyosmani 批判性思考要變成關卡，不是靠自律。做法：每個 agent 交付都附證據（diff、測試輸出、失敗原因），人只回一句「我接受這個取捨」；沒寫出取捨就不算驗收。

**44. @kaushikimmadi (Kaushik Immadisetty)**:
> @addyosmani If you want to talk to w/ other builders in the personal agents space regarding how they’re thinking about this problem swing by to the meetup in running tomorrow! 
> 
> https://t.co/IXcagwygt1

**45. @olidondev (Oli) (❤️ 1)**:
> @addyosmani Something I found is just making sure your mental model of what you want achieved is articulated enough is unbelievably powerful for getting what you want first try

**46. @tiagohintz (Tiago Hintz | Azape)**:
> @addyosmani Good one @addyosmani, "define verified upfront" is the rule we live by.
> The acceptance criterion is written before the task starts. The reviewer checks against it, not the diff, and a person approves against it too.
> Start from the diff and you approve what the agent decided.

**47. @iam_nitan (Nitan Jana) (❤️ 1)**:
> @addyosmani Damn, I tweeted on the same topic (mostly a rant and not detailed) tagging @AnthropicAI  some hours ago and got the answers here immediately.
> 
> https://t.co/8VxTLVZ0rr

**48. @iamAliAhad (Ali Ahad)**:
> @addyosmani This is huge! I just saved your article, and I’m going to have my AI agent turn it into a podcast so I can listen to it while I’m out. Thanks for sharing!!!

**49. @lisunmeai (开心鸭)**:
> @addyosmani @bot 将这篇文章全文翻译为中文发给我的bot

**50. @freddyviteri (Freddy Viteri)**:
> @addyosmani Muy útil la distinción entre delegar y rendirse. Lo estoy viendo en mis clases de IA en los negocios: el estudiante que escribe su hipótesis antes de preguntar aprende el doble que el que solo lee la respuesta. Delegar el trabajo sí, la responsabilidad no.

**51. @dzhang69 (Dong Zhang)**:
> @addyosmani great article, it matches most of my experience and learning while working with AI, it also cleared some of the fog in my head. working with AI is a skill you have to keep practicing, article like this will make that a bit easier.

**52. @HunterRockCat (RockCat)**:
> @addyosmani @bot 解读这篇文章

**53. @OpalescentApple (OpalescentApple)**:
> @addyosmani My issue is this, but also the opposite - if I tell the AI to find issues, it often nitpicks or find alternatives for things which are not wrong, but can be improved, or just tells me things that it saw (or fixed), where there’s no action at all. So the challenge is also focus..

**54. @AYi_AInotes (AYi)**:
> @addyosmani Modern compilers, type systems, and unit tests are becoming increasingly robust. As long as test coverage is comprehensive, why must humans still read and understand every line of the underlying code?

**55. @yolohair (史蒂芬讲AI)**:
> @addyosmani @grok 总结一下这篇文章内容

**56. @Stanley_Wind (Stanley)**:
> @addyosmani @bot 中英翻译收藏到待读

**57. @iamanewperson6 (didididididi)**:
> @addyosmani @bot 翻译

**58. @justinfredette (Justin Fredette)**:
> @addyosmani Lived this. My agents redesigned my whole site in one day and I approved 6 pull requests from my phone. Then I found 3 bugs, two only in dark mode. Approving from a summary isn't checking.

**59. @TheEasySale1 (TheEasySale（互关，有关必回）)**:
> @addyosmani 文章里最值得警惕的一点是：代理替你干活越多，人越容易把判断也外包出去。我的做法是给代理留一个硬边界——凡是涉及花钱、发出去、改生产数据的动作，必须先回我确认一次，哪怕它99%是对的。你平时会给 agent 设这种人工复核点吗？

**60. @davesthepatyguy (Davesthepartyguy)**:
> @addyosmani this hits. my bots submitted 35+ clips and i only noticed a pattern after reading what they'd actually picked. 'the agent did it' isn't a review

**61. @Xiuqi_AIbuilds (Xiuqi｜高三学AI&Bio)**:
> @addyosmani "Did I formulate a hypothesis before asking?" is exactly what I'm trying to build as a high school student. My rule: guess the answer first, then ask AI, then explain it back without looking. If I can't, I haven't learned it, I've surrendered it.

**62. @lukaswarce (Christian Spana | Founder)**:
> @addyosmani The part that stuck with me is that agent output is mostly correct, so nothing forces a second look. I've had better results writing the check before the task, a test or a stated expectation, so reviewing becomes comparing instead of re-reading.

**63. @jianruan_io (Jian Ruan)**:
> @addyosmani Verifying is like mental gym training. It requires discipline &amp; self awareness.

**64. @_Esther_H (Esther Huang)**:
> @addyosmani great blog! It’s quite helpful to keep critical thinking as a habit

**65. @jw27629 (Jason(Jilong) Wu)**:
> @addyosmani Feel it’s becoming harder to keep up as the gain for efficiency just explodes

**66. @MrZubenelakrab (Zubenelakrab 🔭)**:
> @addyosmani We can’t just trust agents, loops, or whatever comes next. As a developer today, I’m reviewing more code and reading more technical details than ever before.

**67. @SundryMill (Sundry Mill)**:
> @addyosmani What keeps us sharp: every agent change has to come back as a screenshot. Wrong spacing is much easier to argue with than a confident paragraph

**68. @alexander_jais (Alex) (❤️ 1)**:
> @addyosmani 100%. agents do the work, but nothing moves without my go

**69. @dschewchenko (Dmytro Shevchenko 🇺🇦)**:
> @addyosmani I chose D1 for auth and permissions and separate DOs for workspace data in DobroDesk. If an agent changes where something gets stored I need to know why

**70. @garpu_ng (garpu)**:
> @addyosmani i don't let mine send anything. the inbox agent drafts, attaches its reasoning, and i read that part first. the reasoning is what tells me when not to trust the draft

**71. @GargeyaS (Gargeya)**:
> @addyosmani Phenomenal article, and a great addition. This topic needs to be discussed a lot more.
> 
> It is crucial that humans enjoy this assisted intelligence that is becoming available to them, rather than eventually creating an environment full of anxiety where they feel threatened and

**72. @devkevlar (Kevlar)**:
> @addyosmani The polished output is exactly the problem. Messy code made you read it properly, clean-looking code gets waved through. Treating agent output as a draft that still needs a proper review is the habit worth keeping!

**73. @din0s_ (dinos)**:
> @addyosmani cosigned https://t.co/szliNzesaJ

**74. @EuclidStellar (Gaurav 🍁)**:
> @addyosmani Critical thinking needs critical optimism

**75. @neilzeegg (GauravG)**:
> @addyosmani Great insight Addy. More and more I am now starting with hypothesis and building issue tree - having that as a starting point really forces to scope the problem towards solving the hypothesis. But building an issue tree is incredibly hard (and llms are poor at it).

**76. @5pmHQ (5pm ☀️)**:
> @addyosmani if you can't explain what the agent did in one sentence, you didn't review it. you just accepted it.

**77. @Paulebaer (🐦Paul'chen🐦)**:
> @addyosmani What some dope shit! This article hits right where my head's at. / Was für ein geiler Scheiß! Der Artikel trifft genau meinen Geschmack.

**78. @hudson_gri (Hudson Griffith)**:
> @addyosmani I feel like most teams already hit cognitive surrender

**79. @riverheavy (Chen)**:
> @addyosmani @readwise save

**80. @trekedge (Daniel Steigman) (❤️ 1)**:
> @addyosmani I surrender all my bureaucratic chores and have to watch out to not completed defer real tasks as well. It’s a hard lesson people will need to learn

**81. @CatKingAC (CatKingAC)**:
> @addyosmani I run the "did I miss anything" ritual after every PR like it's a magic password, not a real question. Somewhere there's an org chart with my job title on it that just says "reviews the reviewer," and nobody approved that in writing.

**82. @fullstackparody (Nikhil) (❤️ 1)**:
> @addyosmani The test I use: write the plan yourself before the agent does. If you can't, you don't understand the task yet.

**83. @truedanbo (danbo)**:
> @addyosmani Loving this! Critical thinking has become increasingly useful in agentic world. But I’d push back a bit on the necessity of it and at which level. To me, it’s ok to externalise our thoughts even what we used to think belongs to critical as long as the process that’s verifiable

**84. @SedyBenoitPeace (Stefano Rifici)**:
> @addyosmani Yeah this is something very important for everyone in the age of AI, and I am finding myself very lazy sometimes (and even cursing at Agents), great read and great article @addyosmani

**85. @dng_notes (dng)**:
> @addyosmani an agent's confident guess only needs to survive one skim before the next agent treats it as fact.

**86. @thenikmayer (Nik Mayer)**:
> @addyosmani Writing down a complex ask before you prompt LLMs helps structure my thinking. Makes my instructions better and easier assess the quality of AI output/ slop

**87. @lokidotdev (Loki) (❤️ 1)**:
> @addyosmani Good read

**88. @harden_369741 (E1ev3n.)**:
> @addyosmani I use that junior pull request habit myself, because I stay in charge only when I can point to the evidence behind each change.

**89. @nymbleton (Upgunta)**:
> @addyosmani TLDR: Keep yourself in the game by manually applying the skills that matter.

**90. @naolgr (Naol g) (❤️ 1)**:
> @addyosmani we outsourced the thinking and kept the confidence

**91. @brucetheway01 (akesar)**:
> @addyosmani your cognitive surrender post had the stat i keep thinking about. when the ai was wrong, people still went with its answer 73% of the time, and felt more confident doing it. that's me approving a pr on friday evening

**92. @Lakbychance (Lakshya Thakur)**:
> @addyosmani I feel we started earlier with the “how” to reach from input to output. Now we define the input and output of a system and let agents figure that out. Yes we can have a say in that with manual intervention or maybe even planning it out. But in some cases, we can let it build the

**93. @BasMondragon (Sebastian Mondragon)**:
> @addyosmani does writing down your guess first still work when it's a task you've never done yourself

**94. @TheTransfe69558 (The transfer Account)**:
> @addyosmani stop random bs and stop cramming your moral compass into claude

**95. @hamad_a_masood (Hamad)**:
> @addyosmani The flipped default in the middle of a 600-line PR is exactly what a clean summary hides. Claim summaries for adjusters have the same risk.

**96. @TimYourCOO (Tim Clark · COO / 3 distributors)**:
> @addyosmani Delegation keeps the judgment. Surrender hands it over. Simple test: can you explain why the output is right without the tool in the room? If not, you didn't delegate. You abdicated.

**97. @YousseFathallaX (Youssef Fathalla)**:
> @addyosmani addy's 'decide what you expect before you read the diff' habit is so underrated. if you can't roughly guess what the change should look like, you're not reviewing it, you're just approving it

**98. @ccatalini (Christian Catalini)**:
> @addyosmani yes! we described the same dynamic as the missing junior loop https://t.co/LSQpFKiEYq

**99. @davit__yan (Davit yan)**:
> @addyosmani "Did I miss anything?" at the end is such an underrated habit 👀 The scary part is that the output looks polished, so nobody takes a second look. What's the one check you never skip?

**100. @dsacellarius (Dimitris Fotis Sakellariou)**:
> @addyosmani No cognitive surrender!

**101. @dogadze (Giorgi Dogadze)**:
> @addyosmani One cheap check is writing down which files you expect the diff to touch before you open it. Any file you didn't predict is where the careful reading goes.

**102. @DietmarFuerste6 (H:AI:R.Runner & AI2AIR.Lab)**:
> @addyosmani Yes.. This is called "learning atrophy"—what happens when there is no "learning by doing."

**103. @avijeet_writes (Avijeet | Personal Branding Strategist)**:
> @addyosmani Is anyone actually reading this long article on X?

**104. @smmrochamotta (Samuel da Rocha Motta)**:
> @addyosmani @bot resuma os principais pontos

**105. @lindavivah (Linda Vivah (Haviv))**:
> @addyosmani 🔥🔥🔥 best start to the day is reading Addy’s articles

**106. @jkreileder (Jürgen Kreileder)**:
> @addyosmani Good to see Bainbridge rediscovered every few decades. Ironies of Automation, 1983: automate the task, lose the skill needed to supervise it. The fix still isn’t asking the automation whether it missed anything.

**107. @paleknight (Vraj)**:
> @addyosmani the "write your guess down before you run the agent" part is the one i'd steal. once you've read a clean, confident answer you basically can't picture any other one, so the guess is the only baseline you've got

**108. @clflux (Clfux)**:
> @addyosmani Critical Thinking is going to be the new Ivory tower lmaooo

**109. @ExiledonMoon (The Lunar Misfit)**:
> @addyosmani Asked my agent whether I've lost my critical thinking. It said great question.

**110. @actiandev (Actian for Developers)**:
> @addyosmani yes but can I send this to my agents?

**111. @antjazz0 (Anant)**:
> @addyosmani I’ve always found myself repeatedly asking the agent to explain to me its reasoning until my own mental model is refined enough to take a decision. Keeps me sane honestly haha

**112. @godcandle (god candle)**:
> @addyosmani such a good read. ty.

**113. @JMkernt (jimerrors)**:
> @addyosmani That offloading to surrender slide hits close to home — I usually only notice it when I can't explain the answer back.

**114. @ps_ios_dev (PS) (❤️ 1)**:
> @addyosmani not surprised at all.. its all real .. its all happening..

**115. @GlobalAgingAI (Wayne Duan)**:
> @addyosmani @bot take it back and break it down

**116. @jordbastin (Jordan)**:
> @addyosmani "You're no longer reviewing. You're hoping." Stealing that line.

**117. @malikcge (M.chanel)**:
> @addyosmani we stopped writing codes and now we manage everything

**118. @ahaupt (André)**:
> @addyosmani Converting this into a skill

**119. @AIRSTEVEJOBS (jc)**:
> @addyosmani green diffs don't mean you understand it. they mean you stopped reading

**120. @ZenTek_TV (ZenTek Videogames 🇯🇵)**:
> @addyosmani Tl;dr

**121. @johnroodepic (John Rood)**:
> @addyosmani the agent writes the tests and the pr summary, so the check and the thing being checked come from the same pass. review stops being independent right there. keeping the why outside the session is the whole reason i built memoryrouter.

**122. @sweetDonut88 (Donut)**:
> @addyosmani The friction that used to force a second look is exactly what smooth agent output removes.
> Pre-forming an expectation before you open the diff is the habit that still holds up.

**123. @Ronny_MiniMax (RonnyHe) (❤️ 1)**:
> @addyosmani @bot setup a methodology in my daily work

**124. @SubspaceAnomaly (Marcus Aurelius)**:
> @addyosmani bro I'm not reading all this SMH 🫠

**125. @emik_xyz (Emik 🤭)**:
> @addyosmani red teaming btw

**126. @akramcodez (Sk Akram)**:
> @addyosmani Such a amazing article

**127. @cryptodetect20 (中環BB Man)**:
> @addyosmani @bot  summarize and book mark it

**128. @emilianobonassi (Emiliano Bonassi)**:
> @addyosmani v good article!

**129. @nuwan_sam (Nuwan Samarasekera)**:
> @addyosmani for every green check, what didn't it check - otherwise you're just hoping

**130. @Macfeecn (macfee)**:
> @addyosmani That green-check rule is the one I'd steal. A passing check only proves what it checked, not what it missed — and that's exactly where I stop trusting a diff.

**131. @rusty_ha (Rusty)**:
> @addyosmani @grok 이 아티클 읽고 한글로 주요내용 요약해줘

**132. @notstenio (Stênio Aníbal)**:
> @addyosmani Good insights.

**133. @Namz_10_ (Namita A)**:
> @addyosmani Cool, will read

**134. @KanikaBK (Kanika)**:
> @addyosmani Good read!

**135. @angshumanrudra1 (Angshuman Rudra)**:
> @addyosmani Very cool

**136. @tiange_ye (Tiange Ye)**:
> @addyosmani @bot read this article and summarize for me

**137. @georgedjnj (George)**:
> @addyosmani best piece i’ve read in a while

**138. @notpronsh (Pronsh)**:
> @addyosmani Addy never misses

**139. @hanjeahwan_dev (codeartz)**:
> @addyosmani @grok 翻译中文版

**140. @heisgift (HEISGIFT)**:
> @addyosmani agents doing the work and us forgetting to check it. real risk ngl

**141. @bfflsn (King Brian)**:
> @addyosmani This is such a great post. Thanks!

**142. @al_dqq (dqq)**:
> @addyosmani 👍as good as always

**143. @bossadizenith (Zée)**:
> @addyosmani as always, work of art!
> thanks for sharing such a piece!

**144. @frog75555 (青蛙)**:
> @addyosmani @grok 这篇文章讲了什么

**145. @abiorhmangana (Abiorh)**:
> @addyosmani Thank you so much for this , it’s really amazing.

**146. @shuizhuyu (Crio Songo)**:
> @addyosmani Exactly—the work shifted, but judgment didn’t. @shuizhuyu

**147. @YashiraRam33187 (Yashira Ramos)**:
> @addyosmani @grok giải thích

**148. @zaid_khan_dev (Zaid Khan)**:
> @addyosmani @grok summarize key points

**149. @moonshiftai (moonshiftai)**:
> @addyosmani @grok 翻譯一下

**150. @ministerbtc (정청)**:
> @addyosmani @grok 요약해줘

**151. @mohitsankhla02 (Mohit Sankhla)**:
> @addyosmani @grok can you summarize and give me the main points for this.

**152. @Yaqi_777777 (熊熊烈火🔥🔥🔥)**:
> @addyosmani @Grok 把这篇文章的核心知识迁移到我这个小白脑子里 并通过列举知识迁移案例降低摩擦 增强我的脑神经网络

**153. @Bpariharrrr (B Parihar)**:
> @addyosmani @grok what he want to say ?

**154. @Yugen_AI_art (YugenAI)**:
> @addyosmani 返信する投稿内容が見当たりません。返信したいポストのテキストを貼っていただけますか。
