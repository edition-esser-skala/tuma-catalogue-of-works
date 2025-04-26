\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Andante"
    R1
    r4 r16 g'' as g c as \grace g f8~ f16 f g f
    b g \grace f es8~ es16 es f es as f \grace es d8 g16 es \grace d c8
    f16 d \grace c h8 r16 as-! fis( g) r des'-! h( c) r f-! d?( es)
    as8 f,4 es16 d es g' g, c \grace es8 d4\trill
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Andante"
    R1
    r2 r8 c'~ c16 f, b8
    r b~ b16 es, as8 f g es f
    d4 r16 as'-! fis( g) r des'-! h( c) r f-! d?( es)
    as8 d,,4 c16 h c8 c'4 h8
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    c4^\solo g8 es' d4 c8 h
    c4 g r2
    R1*3
  }
}

TenoreLyrics = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum,
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Andante"
    c8-\solo d es c f d g g,
    c c, es'2 d4~
    d c4~ c8 b4 as8~
    as g c8. h16 f'8. es16 as8. g16
    f8 d16 c h8 g c es f g
  }
}

BassFigures = \figuremode {
  r2 <6>4 <4>8 <_!>
  r4 <6> <4- 2> <7>8 <6>
  <4 2>4 <7>8 <6-> <2> <6> <2> <6>
  <4 2!> <_!> <6->8. <6>16 <6->8. <6>16 q8. q16
  <_->2. <6 5>8 <_!>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
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
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
