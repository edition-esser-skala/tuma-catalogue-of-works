\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    g'8. as16 g16. h32 c16. d32 es8 c, c4
    es'8. f16 es16. d32 es16. f32 g8 es, es4
    g'16(-. g-. g-. g-.) g(-. g-. g-. g-.) as f c as f4
    f'16(-. f-. f-. f-.) f(-. f-. f-. f-.) g es b g es4
    des'16. des32 c16. b32 c16 b as8 es'16. es32 d16. c32 d16 c b8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1
    c'8. d16 c16. h32 c16. d32 es8 c, c4
    es16(-. es-. es-. es-.) c'(-. c-. c-. c-.) c4 as,
    as'16(-. as-. as-. as-.) as(-. as-. as-. as-.) b4 b,
    b'8 g es c'~ c a f4
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    c8. c16 c8. c16 c8 c, c4
    c'8. c16 c8. c16 c8 c, c4
    c'16(-. c-. c-. c-.) c(-. c-. c-. c-.) f4 f16 c as f
    d'(-. d-. d-. d-.) b(-. b-. b-. b-.) es4 es16 b g es
    es'(-. es-. es-. es-.) as es c as f'(-. f-. f-. f-.) b f d b
  }
}

BassFigures = \figuremode {
  r1
  r
  r2 <_->
  <6 5->4 <7->2.
  <7->2 <7 _!>4 <_!>
}


\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/6) }
}
