\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]"
    r4 d' d b8 c
    d8. g,16 g8 b a4 d8 d
    c4. b8 a a a8. a16
    b4 b8 b a4. b8
    c d d d c c c h
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1
    r4 g'8 g g f f g
    a8. d,16 d8 g g4 fis
    g2 r4 a8 g
    fis fis g4 g8 as f4
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*2
    r2 r4 d~
    d8 d b c d4 d8 d
    c c b b c c d4
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*3
    g'4. g8 f4. g8
    a d, g4 es!8 f! d4
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]"
    r4 d' d b8 c
    d8. g,16 g8 b a4 d8 d
    c4. b8 a a a8. a16
    b4 b8 b a4. b8
    c d d d c c c h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1
    r4 g'8 g g f f g
    a8. d,16 d8 g g4 fis
    g2 r4 a8 g
    fis fis g4 g8 as f4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r4 d' d b8 c
    d8. g,16 g8 b a4 d8 d
    c4. b8 a a a8. a16
    b4 b8 b a4. b8
    c d d d c c c h
  }
}

SopranoLyrics = \lyricmode {
  Sub tu -- um prae --
  si -- di -- um con -- fu -- gi -- mus,
  San -- cta De -- i Ge -- ne --
  trix. No -- stras de -- pre --
  ca -- ti -- o -- nes ne de -- spi -- "ci -"
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1
    r4 g'8 g g f f g
    a8. d,16 d8 g g4 fis
    g2 r4 a8 g
    fis fis g4 g8 as f4
  }
}

AltoLyrics = \lyricmode {
  No -- stras de -- pre -- ca -- ti --
  o -- nes ne de -- spi -- ci --
  as in ne --
  ces -- si -- ta -- ti -- bus "no -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    r2 r4 d~
    d8 d b c d4 d8 d
    c c b b c c d4
  }
}

TenoreLyrics = \lyricmode {
  In __
  ne -- ces -- si -- ta -- ti -- bus
  no -- stris li -- be -- ra nos "sem -"
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*3
    g'4 g8 g f4 f8 g
    a d, g8. g16 es!8 f! d4
  }
}

BassoLyrics = \lyricmode {
  Sed a per -- i -- cu -- lis
  cun -- ctis li -- be -- ra nos "sem -"
}

Organo = {
  \relative c {
    \clef soprano
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]"
    r4 d''-!-\tutti d-! b8-! c-!
    << {
      d8. g,16 g8 b a4 d
      c4. b8 a4
    } \\ {
      r4 g g8 f f g
      a8. d,16 d8 g g4
    } >> \clef tenor d
    \clef bass g,4. g8 f4. g8
    a d, g4 es!8 f! d4
  }
}

BassFigures = \figuremode {
  r1
  r
  r2. <_+>4
  r2 <6>
  <6\\>8 <_+>4. <6>8 <_-> <7> <6!>
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
