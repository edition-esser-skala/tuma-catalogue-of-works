\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/2 \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    a'2. d4 b1
    a2 d1 cis2
    d a4 h! c1
    b a
    r e2 e
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/2 \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    r1 d2. g4
    f1 e
    f e2 e
    f g f4 g a2~
    a g a1
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/2 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    a'2.^\tutti d4 b2 b
    a d d cis
    d4 d a h! c2. c4
    b1 a
    r e2 e
  }
}

SopranoLyrics = \lyricmode {
  Con -- fi -- te -- bor
  ti -- bi, Do -- mi --
  ne, in to -- to cor -- de
  me -- o,
  et "iu -"
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/2 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    r1 d2.^\tutti g4
    f2. f4 e2 e
    f1 e2 e
    f g f4 g a2
    a g a1
  }
}

AltoLyrics = \lyricmode {
  In con --
  si -- li -- o iu --
  sto -- rum, et
  con -- gre -- ga -- _ ti --
  o -- _ ne,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/2 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    R\breve
    r1 a2.^\tutti a4
    f e f d a'1~
    a4 a g2 r d'
    d2. d4 cis2 a4 g
  }
}

TenoreLyrics = \lyricmode {
  Ma -- gna
  o -- _ pe -- ra Do --
  mi -- ni, con --
  fes -- si -- o et "ma -"
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/2 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    R\breve*2
    d2.^\tutti d4 c!2 c4 a
    d2 e f4 e d c
    b1 a
  }
}

BassoLyrics = \lyricmode {
  Ex -- qui -- si -- ta in
  o -- mnes vo -- lun -- ta -- tes
  e -- ius,
}

Organo = {
  \relative c {
    \clef soprano
    \key d \dorian \time 4/2 \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    a''2.-\tutti d4 << { b1 a2 d } \\ { d,2. g4 f1 } >>
    \clef tenor a,
    \clef bass d, c!2. a4
    d2 e f4 e d c
    b1 a
  }
}

BassFigures = \figuremode {
  r\breve
  r1 <5 4>2 <\t _+>
  r1 <6>
  <6- 5>2 <5->1.
  <7>2 <6> <_+>1
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
        \set Staff.instrumentName = \markup \center-column { "S" "cnto" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "B" "fag" }
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
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
