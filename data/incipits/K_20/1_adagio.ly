\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    c'4. c8 des8. des16 c8 b
    as16 g f8 r c' f8. \tuplet 3/2 16 { f32 g as } g8 f
    e16 d c8 r g as16( b) b( c) \grace as8 g8. g16
    as b b c \grace f,8 e c' a16( b) b( c) des8. d16
    h( c) c( d) \grace d8 es g g16 as f es f4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    as'4 r8 f des16 f \hA des f e8 g
    f4 as16 f as g f des f \hA des f \hA des f \hA des
    c g' e g g8 \hA e f16 g g as g e g \hA e
    f g g as g e g \hA e f4 f8. e16(
    f4) g r8 as' as16 b, d f
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    f16 as f as f as f as b, des b \hA des c e c \hA e
    f f, f' f, f' f, f' es des b \hA des b \hA des b \hA des b
    c c, c' c, e' e c \hA e f f, f' f, e' c \hA e c
    f f, f' f, e' c \hA e c f f, es' es, b' des b b'
    g g, f' g, c es c es f f, f' f, b d b d
  }
}

BassFigures = \figuremode {
  %tacet
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
}
