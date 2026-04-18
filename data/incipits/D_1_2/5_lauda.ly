\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
    a'4 a8 a f4 g8 a
    b2 a4 a~
    a8 d, d'2 cis4
    d4. c16 b a4 d,
    R1
    d'2 c4 h8 a
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
    R1
    d4. d8 c4 d8 e
    f4 e8 d e2
    d4 f f4. d16 e
    f4. f8 g f e4
    e2 e4 r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    a'4^\tutti a8 a f4 g8 a
    b4. b8 a4 a~
    a8 d, d'2 cis4
    d4. c16[ b] a4 d,
    R1
    d'2 c4 h8 a
  }
}

SopranoLyrics = \lyricmode {
  Lau -- da, Je -- ru -- sa -- lem,
  Do -- mi -- num, lau --
  da De -- um
  tu -- um, Sy -- on.

  Qui po -- su -- it
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1
    d4.^\tutti d8 c4 d8[ e]
    f4 e8[ d] e2
    d4 f2~ f8 d16[ e]
    f4 f g8[ f] e4
    e2 e4 r
  }
}

AltoLyrics = \lyricmode {
  Lau -- da De -- um %2
  tu -- um, Sy --
  on, lau -- da
  De -- um  tu -- um,
  Sy -- on.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*2
    r2 a4.^\tutti a8
    b4 a8 d b a \hA b4
    a d d c8 c
    h!2 a~
  }
}

TenoreLyrics = \lyricmode {
  Quo -- ni --
  am con -- for -- ta -- vit se --
  ras por -- ta -- rum tu --
  a -- rum,
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*3
    d4.^\tutti d8 f4 d8[ g]
    f4 e8[ d] e4 a
    a gis8 gis a4 g
  }
}

BassoLyrics = \lyricmode {
  Be -- ne -- di -- xit,
  be -- ne -- di -- xit
  fi -- li -- is tu -- is
}

Organo = {
  \relative c {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
    a''4-!-\tutti a8-! a-! f4-! g8-! a-!
    << {
      b4. b8 a4 a
      a8 d, d'4
    } \\ {
      d,4. d8 c4 d8 e
      f4 e8 d
    } >> \clef tenor a4. a8
    \clef bass d,4. d8 f4 d8 g
    f4 e8 d e4 a
    a gis a g
  }
}

BassFigures = \figuremode {
  r1
  r
  r2 <4>4 <_+>
  <6-> <5>2 <6->4
  r2 <7>
  <2>4 <6>2 q4
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
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
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
