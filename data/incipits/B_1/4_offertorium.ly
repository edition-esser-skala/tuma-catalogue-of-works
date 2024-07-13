\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    as'4 as8 as b4 b8 b
    b4. b8 b4 as
    r2 r4 r8 as
    as4. as8 as2
    as4 as8 as a4 a8 a
    b8. b16 b4 r2
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    f4 f8 f f4 f8 f
    g4. g8 g4 f
    r2 r4 r8 f
    f4. f8 f2
    f4 f8 f f4 f8 f
    f8. f16 f4 r2
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    c4 c8 c des4 des8 des
    c4. c8 c4 c
    r2 r4 r8 c
    c4. c8 c2
    c4 c8 c c4 c8 c
    des8. des16 des4 r2
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    f,1
    e2 f
    r r4 r8 f'
    f,1
    f'2 es!
    des r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    as'2 b~
    b2. as4
    as'8(\p g) e( f) des( c) e, f\f
    as4. as8 as2
    as4. as8 a4. a8
    b2 ges'8(\p f) a,( b)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    c2 des
    c1
    as''8(\p g) e( f) des( c) e, f\f
    f4. f8 f2
    f4. f8 f4. f8
    f4 b, ges''8(\p f) a, b
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key f \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    as'4 as8 as b4 b8 b
    b4. b8 b4 as
    r2 r4 r8 as
    as4. as8 as2
    as4 as8 as a4 a8 a
    b8. b16 b4 r2
  }
}

SopranoLyrics = \lyricmode {
  Do -- mi -- ne, Do -- mi -- ne
  Je -- su Chri -- ste,
  Rex
  glo -- ri -- ae,
  li -- be -- ra, li -- be -- ra
  a -- ni -- mas,
}

Alto = {
  \relative c' {
    \clef alto
    \key f \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    f4^\tutti f8 f f4 f8 f
    g4. g8 g4 f
    r2 r4 r8 f
    f4. f8 f2
    f4 f8 f f4 f8 f
    f8. f16 f4 r2
  }
}

AltoLyrics = \lyricmode {
  Do -- mi -- ne, Do -- mi -- ne
  Je -- su Chri -- ste,
  Rex
  glo -- ri -- ae,
  li -- be -- ra, li -- be -- ra
  a -- ni -- mas,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key f \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    c4^\tutti c8 c des4 des8 des
    c4. c8 c4 c
    r2 r4 r8 c
    c4. c8 c2
    c4 c8 c c4 c8 c
    des8. des16 des4 r2
  }
}

TenoreLyrics = \lyricmode {
  Do -- mi -- ne, Do -- mi -- ne
  Je -- su Chri -- ste,
  Rex
  glo -- ri -- ae,
  li -- be -- ra, li -- be -- ra
  a -- ni -- mas,
}

Basso = {
  \relative c {
    \clef bass
    \key f \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    f4 f8 f f4 f8 f
    e4. e8 f4 f,
    r2 r4 r8 as'
    f8[ as16 g] f[ c as c] f,8. f16 f4
    f' f8 f es!4 es8 es
    des8. des16 des4 r2
  }
}

BassoLyrics = \lyricmode {
  Do -- mi -- ne, Do -- mi -- ne
  Je -- su Chri -- ste,
  Rex
  glo -- _ _ ri -- ae,
  li -- be -- ra, li -- be -- ra
  a -- ni -- mas,
}

Organo = {
  \relative c {
    \clef bass
    \key f \dorian \time 4/4 \tempoMarkup "Adagio"
    f,1-\tutti
    e2 f
    r r4 r8 f'
    f,1
    f'2 es!
    des r
  }
}

BassFigures = \figuremode {
  r2 <6- 4>
  <6 5-> <9 4>4 <8 3>
  r1
  r
  r2 <4 2>
  <6>1
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
    >>
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
